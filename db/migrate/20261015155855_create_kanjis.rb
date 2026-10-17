class CreateKanjis < ActiveRecord::Migration[7.2]
  def change
    create_table :kanjis do |t|
      t.string :character
      t.integer :grade
      t.string :level
      t.string :vietnamese
      t.integer :difficulty

      t.timestamps
    end
  end
end
