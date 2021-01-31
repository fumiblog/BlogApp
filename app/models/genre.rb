class Genre < ApplicationRecord
  has_many :footprints, dependent: :destroy

end
