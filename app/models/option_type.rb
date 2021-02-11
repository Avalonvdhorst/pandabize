class OptionType < ApplicationRecord
  belongs_to :bicycle_model
  has_many :options
end
