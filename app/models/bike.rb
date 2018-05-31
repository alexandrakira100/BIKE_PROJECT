class Bike < ApplicationRecord
  belongs_to :user
  validates :description, presence: true
  validates :photo, presence: true
  enum size: [:small, :medium, :large]
  validates :size, presence: true
  validates :price_per_day, presence: true

  has_many :rentals

  def available_now?
    rentals.where("start_date < ? OR end_date > ?", Time.current, Time.current).empty?
  end

  def available?(rental_start_date, rental_end_date)
    rentals.where("start_date < ? OR end_date > ?", (rental_start_date), (rental_end_date)).empty?
  end
end

