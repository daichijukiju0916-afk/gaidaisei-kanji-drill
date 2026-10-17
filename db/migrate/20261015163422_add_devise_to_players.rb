class AddDeviseToPlayers < ActiveRecord::Migration[7.2]
  def change
    # ログイン用のパスワード
    add_column :players, :encrypted_password,
               :string, null: false, default: ""

    # ログイン状態を記憶するための情報
    add_column :players, :remember_created_at, :datetime

    # ユーザー名の重複を禁止
    add_index :players, :name, unique: true
  end
end