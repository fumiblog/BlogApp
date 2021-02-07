require 'csv'

CSV.generate do |csv|
  csv_column_blogs = %w(Title Summary Body)
  csv << csv_column_blogs
  @blogs.each do |blog|
    csv_column_values = [
      blog.title,
      blog.summary,
      blog.body
    ]
    csv << csv_column_values
  end
end
