class CreateFootprints < ActiveRecord::Migration[6.1]
  def change
    create_table :footprints do |t|
      t.date :date
      t.string :title
      t.string :body
      t.integer :price
      t.integer :genre_id

      t.timestamps
    end
  end
end
