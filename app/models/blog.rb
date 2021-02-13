class Blog < ApplicationRecord
  has_rich_text :body
  attachment :image
  belongs_to :category

  validates :title, :category_id, :web_address, presence: true
end
