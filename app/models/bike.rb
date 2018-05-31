class Bike < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :photo, presence: true
  enum size: [:small, :medium, :large]
  validates :size, presence: true
  validates :price_per_day, presence: true

  NEIGHBOURHOODS = ["Shibuya", "Shinjuku", "Ginza", "Omotesando", "Asakusa", "Harajuku", "Meguro"]
  PRICE_CHOICES = [500, 1000, 1500, 2000, 2500, 3000, 3500]
end
