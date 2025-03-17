class Trip < ApplicationRecord
  belongs_to :user
  has_many: destinations, dependent: destroy
  
  validates :user, presence: true
  validates :title, presence: true, length: {maximum: 20} 
  validates :start_date, presence: true
  validates :end_date, presence: true

end

