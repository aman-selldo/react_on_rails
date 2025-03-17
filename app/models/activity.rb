class Activity < ApplicationRecord
  belongs_to :destination

  validates :name, :date, :time, presence: true
end
