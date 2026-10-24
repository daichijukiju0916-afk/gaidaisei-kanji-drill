
class AddKoreanMode < ActiveRecord::Migration[7.2]
  def change
    # 漢字ごとの韓国語の読み
    add_column :kanjis, :korean, :string

    # 韓国語専用のEloレート
    add_column :players, :korean_rating, :integer,
               default: 1000, null: false

    # 回答がどちらの言語か記録
    add_column :answers, :language, :string,
               default: "vietnamese", null: false
  end
end
