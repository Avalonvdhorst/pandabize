class DisabledOption < ApplicationRecord
  belongs_to :option, foreign_key: :option_one_id
  belongs_to :option, foreign_key: :option_two_id
  # belongs_to :option_type, through: :option
end
