class Tour < ApplicationRecord
  belongs_to :location
  has_many :tour_locations
  has_many :locations, through: :tour_locations, dependent: :destroy

  validates :locations, presence: true
end
