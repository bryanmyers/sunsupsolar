class Installation < ActiveRecord::Base
  belongs_to :user
  validates :address, :city, :zip, :user_id, presence: true 
end
