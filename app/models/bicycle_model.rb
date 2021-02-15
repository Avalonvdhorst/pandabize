class BicycleModel < ApplicationRecord
  has_many :option_types
  has_many :options, through: :option_types

  has_one_attached :photo


  def url_photo
    if photo.attached?
      photo.service_url
    else
      ""
    end
  end
end
