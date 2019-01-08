class TourLocation < ApplicationRecord
  belongs_to :tour
  belongs_to :location
end
