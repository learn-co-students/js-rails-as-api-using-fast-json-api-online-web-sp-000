class Bird < ApplicationRecord
  has_many :sightingss
  has_many :locations, through: :sightings
end
