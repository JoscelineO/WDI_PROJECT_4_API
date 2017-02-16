class User < ApplicationRecord
  has_secure_password
  validates :email, presences: true, uniqueness: true 
end
