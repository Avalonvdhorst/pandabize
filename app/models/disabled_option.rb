class DisabledOption < ApplicationRecord
  belongs_to :option
  # belongs_to :option_type, through: :option
end
