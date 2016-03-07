class Unregistered < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  belongs_to :user
  has_many :pets
  has_many :roles
end
