class User < ApplicationRecord
  has_many :orders
  has_secure_password
  
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, presence: true
end
