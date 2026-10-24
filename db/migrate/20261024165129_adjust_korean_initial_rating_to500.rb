
class AdjustKoreanInitialRatingTo500 < ActiveRecord::Migration[7.2]
  def up
    if connection.adapter_name == "PostgreSQL"
      # 本番DBの初期レートを500に変更
      execute <<~SQL
        ALTER TABLE players
        ALTER COLUMN korean_rating SET DEFAULT 500
      SQL
    else
      # SQLiteでは既存のテーブル再構築エラーを回避
      # RailsのPlayerモデル側で初期値500を設定済み
      say "SQLite: デフォルト値変更をスキップ"
    end

    # 旧初期レート1000を基準とする既存プレイヤーを換算
    execute <<~SQL
      UPDATE players
      SET korean_rating =
        CASE
          WHEN korean_rating >= 500 THEN korean_rating - 500
          ELSE 0
        END
    SQL
  end

  def down
    raise ActiveRecord::IrreversibleMigration,
          "レート調整は自動で元に戻しません"
  end
end
