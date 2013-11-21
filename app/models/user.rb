class User < ActiveRecord::Base

  has_secure_password

  has_many :news, foreign_key: "user_id"

  before_save { email.downcase! }

  validates :name,  presence: true, length: { maximum: 50 }
  validates :address,  presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  # validates :password_digest, presence: true, length: { minimum: 6 }
  # validates :password_confirmation, presence: true
  validates :phone, numericality: true, length: { is: 10}
  validates :zip, numericality: true, length: { is: 5}
  validates :best_time, presence: true
  validates :e_bill, numericality: true


  private

end
