class AddColumnGenres < ActiveRecord::Migration[6.1]
  def change
    add_column :genres, :target, :boolean
  end
end
