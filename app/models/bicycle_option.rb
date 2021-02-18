class BicycleOption < ApplicationRecord
  belongs_to :bicycle
  belongs_to :option

  accepts_nested_attributes_for :option, allow_destroy: true
end
