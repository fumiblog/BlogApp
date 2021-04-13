class Footprint < ApplicationRecord
  belongs_to :genre

  enum result: {
    oubo: 0,
    ng: 1,
    ichji: 2,
    niji: 3,
    sanji: 4,
    naitei: 5
  }
end
