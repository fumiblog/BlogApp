class AddColumnBlog3 < ActiveRecord::Migration[6.1]
  def up
    add_column :blogs, :category_id, :integer
  end
end
