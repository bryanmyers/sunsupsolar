class User < ActiveRecord::Base

  # because we are using bcrypt
  has_secure_password

  has_many :news, foreign_key: "user_id"

  # keeps silly mistakes from happening during login
  before_save { email.downcase! }

  # Validates Presence. Length validation also implies presence
  validates :address, :best_time, :e_bill, :password, presence: true
  
  # These validate type and/or length
  validates :e_bill, numericality: true
  validates :name, length: { maximum: 50 }
  # vvalidates :phone, numericality: true, length: { is: 10}
  validates :zip, numericality: true, length: { is: 5}
  
  # Are what they are imputting a valid email and is it already in the DB?
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }

  # Validate that the passwords match. Also implies password confirmation presence.          
  validates :email, confirmation: true

end
