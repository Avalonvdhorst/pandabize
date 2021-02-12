class BicycleModel < ApplicationRecord
  has_many :option_types

  has_one_attached :photo
end
