class UserCredential < ActiveRecord::Base
  belongs_to :user_detail

  has_secure_password
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end