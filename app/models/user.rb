class User < ActiveRecord::Base
  has_many :pets
  has_secure_password
  validates :username, presence: true
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
end
