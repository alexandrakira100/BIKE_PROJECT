  class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  validates :start_date, presence: true
  validates :end_date, presence: true

  def nice_start_date
    start_date.strftime("%a, %b %d, %Y")
  end

  def nice_end_date
    end_date.strftime("%a, %b %d, %Y")
  end
end
