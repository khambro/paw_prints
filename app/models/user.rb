class User < ActiveRecord::Base
  has_many :pets
  has_many :roles
  has_secure_password
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true


  def user_roles
    roles=[]
    self.roles.each do |r|
      roles << r.role
    end
    return roles
  end

end
