class BicycleModel < ApplicationRecord
  has_many :option_types
  has_many :options, through: :option_types
  has_many :disabled_options, dependent: :destroy

  has_one_attached :photo

  accepts_nested_attributes_for :option_types, allow_destroy: true
  accepts_nested_attributes_for :disabled_options, allow_destroy: true

  def url_photo
    if photo.attached?
      photo.service_url
    else
      "https://images.unsplash.com/photo-1508772382388-0b8fc7f7edb5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=967&q=80"
    end
  end
end
