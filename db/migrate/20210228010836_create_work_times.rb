class CreateWorkTimes < ActiveRecord::Migration[6.1]
  def change
    create_table :work_times do |t|
      t.string :title
      t.integer :worktype_id
      t.datetime :start
      t.datetime :goal

      t.timestamps
    end
  end
end
