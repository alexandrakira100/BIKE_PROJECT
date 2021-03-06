class Bike < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :photo, presence: true
  mount_uploader :photo, PhotoUploader
  enum size: [:small, :medium, :large]
  enum neighborhood: [:Shibuya, :Shinjuku, :Ginza, :Omotesando, :Asakusa, :Harajuku, :Meguro, :Roppongi]
  validates :size, presence: true
  validates :price_per_day, presence: true

  NEIGHBOURHOODS = ["Shibuya", "Shinjuku", "Ginza", "Omotesando", "Asakusa", "Harajuku", "Meguro"]
  PRICE_CHOICES = [100, 250, 500, 700, 1000]

  validates :neighborhood, presence: true
  # validates :pickup_address, presence: true
  has_many :rentals

  def available_now?
    rentals.where("start_date < ? OR end_date > ?", Time.current, Time.current).empty?
  end

  def available?(rental_start_date, rental_end_date)
    rentals.where("start_date < ? OR end_date > ?", (rental_start_date), (rental_end_date)).empty?
  end
end
