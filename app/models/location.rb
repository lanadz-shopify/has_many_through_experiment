class Location < ApplicationRecord
  has_many :tour_locations
  has_many :tours, through: :tour_locations, dependent: :destroy
end
