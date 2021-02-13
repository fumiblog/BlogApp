class AddColumnBlogss < ActiveRecord::Migration[6.1]
  def up
    add_column :blogs, :web_address, :string 
  end
end
