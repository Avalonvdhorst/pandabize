class Option < ApplicationRecord
  belongs_to :option_type

  has_many :bicycle_options
  has_many :disabled_options, foreign_key: :option_one_id, dependent: :destroy
  has_many :do_two, class_name: "DisabledOption", foreign_key: :option_two_id, dependent: :destroy


  def disabled_option_ids
    DisabledOption.where("option_one_id = ? OR option_two_id = ?", id, id)
                  .pluck(:option_one_id, :option_two_id)
                  .flatten
                  .reject{|ele| ele == id }
  end
end
