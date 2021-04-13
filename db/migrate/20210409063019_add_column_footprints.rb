class AddColumnFootprints < ActiveRecord::Migration[6.1]
  def change
    add_column :footprints, :result, :integer
  end
end
