
require "csv"

path = Rails.root.join("db", "kanjis_export.csv")

unless File.exist?(path)
  abort "CSVファイルが見つかりません: #{path}"
end

imported = 0
skipped = 0

CSV.foreach(path, headers: true, encoding: "UTF-8") do |row|
  attributes = {
    character: row["character"],
    grade: row["grade"].presence,
    level: row["level"],
    vietnamese: row["vietnamese"],
    difficulty: row["difficulty"]
  }

  if Kanji.exists?(character: attributes[:character])
    skipped += 1
    next
  end

  Kanji.create!(attributes)
  imported += 1
end

puts "新規登録: #{imported}字"
puts "登録済みのためスキップ: #{skipped}字"
puts "現在の漢字数: #{Kanji.count}字"

