class Option < ApplicationRecord
  belongs_to :option_type
  has_many :disabled_options, dependent: :destroy
  has_many :disabled_options, foreign_key: :option_one_id
  has_many :disabled_options, foreign_key: :option_two_id
  has_many :bicycle_options

  accepts_nested_attributes_for :disabled_options, allow_destroy: true
end
