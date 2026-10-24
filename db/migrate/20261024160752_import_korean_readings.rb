
require "csv"

class ImportKoreanReadings < ActiveRecord::Migration[7.2]
  def up
    path = Rails.root.join("db", "korean_readings.csv")

    unless File.exist?(path)
      raise "韓国語CSVが見つかりません: #{path}"
    end

    db = connection
    count = 0

    CSV.foreach(path, headers: true, encoding: "UTF-8")
       .each_slice(200) do |batch|

      readings = batch.filter_map do |row|
        character = row["character"].to_s.strip
        korean = row["korean"].to_s.strip

        next if character.empty? || korean.empty?

        [character, korean]
      end

      next if readings.empty?

      cases = readings.map do |character, korean|
        "WHEN #{db.quote(character)} THEN #{db.quote(korean)}"
      end.join(" ")

      characters = readings.map do |character, _|
        db.quote(character)
      end.join(", ")

      db.execute(<<~SQL)
        UPDATE kanjis
        SET korean = CASE character
          #{cases}
          ELSE korean
        END
        WHERE character IN (#{characters})
      SQL

      count += readings.size
    end

    say "韓国語の読みを#{count}字分処理しました"
  end

  def down
    raise ActiveRecord::IrreversibleMigration,
          "韓国語の読みは自動削除しません"
  end
end
