class Bike < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :photo, presence: true
  enum size: [:small, :medium, :large]
  validates :size, presence: true
  validates :price_per_day, presence: true
end
