class DisabledOption < ApplicationRecord
  belongs_to :option, foreign_key: :option_one_id
  belongs_to :option, foreign_key: :option_two_id

  validates :option_one_id, presence: true
  validates :option_two_id, presence: true
  # belongs_to :option_type, through: :option

  def find_name_and_content(id_one, id_two)
    content = []
    ot_one = Option.find(id_one)
    content << [OptionType.find(ot_one.option_type_id).name, ot_one.content]
    ot_two = Option.find(id_two)
    content << [OptionType.find(ot_two.option_type_id).name, ot_two.content]
  end
end
