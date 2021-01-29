class AddColumnBlog < ActiveRecord::Migration[6.1]
  def up
    add_column :blogs, :image_id, :string
  end
end
