class AddUniqueIndexToPlayerNames < ActiveRecord::Migration[7.2]
  def up
    execute <<~SQL
      CREATE UNIQUE INDEX index_players_on_lower_name
      ON players (LOWER(name))
    SQL
  end

  def down
    execute "DROP INDEX index_players_on_lower_name"
  end
end