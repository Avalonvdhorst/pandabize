class Bicycle < ApplicationRecord
  belongs_to :user
  belongs_to :bicycle_model
end
