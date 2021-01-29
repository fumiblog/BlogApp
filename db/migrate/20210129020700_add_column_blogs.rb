class AddColumnBlogs < ActiveRecord::Migration[6.1]
  def up
    add_column :blogs, :summary, :string
  end
end
