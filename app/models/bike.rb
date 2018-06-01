class Bike < ApplicationRecord
  belongs_to :user
  has_many :rentals

  validates :description, presence: true
  validates :photo, presence: true

  validates :size, presence: true
  validates :price_per_day, presence: true
  validates :neighborhood, presence: true
  # validates :pickup_address, presence: true

  mount_uploader :photo, PhotoUploader

  enum size: [:kids, :small, :medium, :large]
  enum neighborhood: [:Shibuya, :Shinjuku, :Ginza, :Omotesando, :Asakusa, :Harajuku, :Meguro]

  geocoded_by :pickup_address
  after_validation :geocode, if: :will_save_change_to_pickup_address?

  NEIGHBOURHOODS = ["Shibuya", "Shinjuku", "Ginza", "Omotesando", "Asakusa", "Harajuku", "Meguro"]
  PRICE_CHOICES = [100, 250, 500, 700, 1000]


  def available_now?
    rentals.where("start_date < ? OR end_date > ?", Time.current, Time.current).empty?
  end

  def available?(rental_start_date, rental_end_date)
    rentals.where("start_date < ? OR end_date > ?", (rental_start_date), (rental_end_date)).empty?
  end
end
