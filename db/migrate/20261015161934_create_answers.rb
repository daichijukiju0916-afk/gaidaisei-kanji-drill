class CreateAnswers < ActiveRecord::Migration[7.2]
  def change
    create_table :answers do |t|
      t.references :player, null: false, foreign_key: true
      t.references :kanji, null: false, foreign_key: true
      t.string :user_answer
      t.boolean :correct
      t.integer :rating_change

      t.timestamps
    end
  end
end
