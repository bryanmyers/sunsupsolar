class User < ActiveRecord::Base

  # has_secure_password
  has_many :installations
  has_many :news, foreign_key: "user_id"

  before_save { email.downcase! }
  # before_create :create_remember_token

  validates :name,  presence: true, length: { maximum: 50 }
  validates :address,  presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  # validates :password, presence: true, length: { minimum: 6 }
  # validates :password_confirmation, presence: true
  validates :phone, numericality: true, length: { is: 10}
  validates :zip, numericality: true, length: { is: 5}
  validates :best_time, presence: true
  validates :e_bill, numericality: true
  # after_validation { self.errors.messages.delete(:password_digest) }

  # def User.new_remember_token
  #   SecureRandom.urlsafe_base64
  # end

  # def User.encrypt(token)
  #   Digest::SHA1.hexdigest(token.to_s)
  # end

  private

    # def create_remember_token
    #   self.remember_token = User.encrypt(User.new_remember_token)
    # end

end
