class WorkType < ApplicationRecord
  has_many :work_times, dependent: :destroy
end
