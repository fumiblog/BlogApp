class WorkType < ApplicationRecord
  has_many :work_time, dependent: :destroy
end
