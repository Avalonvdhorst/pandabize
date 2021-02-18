class OptionType < ApplicationRecord
  belongs_to :bicycle_model
  has_many :options, dependent: :destroy
  has_many :disabled_options, through: :options, dependent: :destroy

  accepts_nested_attributes_for :options, allow_destroy: true
end
