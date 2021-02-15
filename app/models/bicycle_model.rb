class BicycleModel < ApplicationRecord
  has_many :option_types
  has_many :options, through: :option_types

  has_one_attached :photo

  accepts_nested_attributes_for :option_types, allow_destroy: true

  def url_photo
    if photo.attached?
      photo.service_url
    else
      ""
    end
  end
end
