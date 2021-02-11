class Option < ApplicationRecord
  belongs_to :option_type
  has_many :disabled_options
  has_many :bicycle_options
end
