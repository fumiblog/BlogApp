class Blog < ApplicationRecord
  has_rich_text :body
  attachment :image
end
