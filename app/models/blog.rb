class Blog < ApplicationRecord
  has_rich_text :body
  attachment :image
  belongs_to :category
end
