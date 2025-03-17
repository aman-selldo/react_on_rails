class Destination < ApplicationRecord
  belongs_to :trip
  has_many :activities, dependent: :destroy

  validates :location, presence: true
  validates :arrival_date, presence: true
  validates :arrival_time, presence: true
  validates :departure_date, presence: true
  validates :departure_time, presence: true
end
