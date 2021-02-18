class Bicycle < ApplicationRecord
  belongs_to :user
  belongs_to :bicycle_model
  has_many :bicycle_options
  has_many :options, through: :bicycle_options
  has_many :option_types, through: :options

  accepts_nested_attributes_for :bicycle_options, allow_destroy: true
end
