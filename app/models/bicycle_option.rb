class BicycleOption < ApplicationRecord
  belongs_to :bicycle, optional: true
  belongs_to :option
end
