class Bicycle < ApplicationRecord
  belongs_to :user
  belongs_to :bicycle_model
  has_many :bicycle_options

  has_one_attached :photo
end
