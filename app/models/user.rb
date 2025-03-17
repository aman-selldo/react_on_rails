class User < ApplicationRecord
  has_many :trips, dependent: :destroy
  has_secure_password
  
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGXP, message: "Please enter valid email address!!"}
  validates :password_digest, presence: true, length: {minimum: 5}
  validates :role, default: 'user', presence: true
end
