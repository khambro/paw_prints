class User < ActiveRecord::Base
  has_many :pets
  has_many :roles
  has_secure_password validations: false
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  has_many :sitter_records
  validates :password, confirmation: true, presence: true, if: :needs_password?
  validates :username, presence: true, if: :registered
  mount_uploader :picture, ImageUploader




  def user_roles
    roles=[]
    self.roles.each do |r|
      roles << r.role
    end
    return roles
  end

  def registered
    if self.roles.where("role=? or role=?", "sitter", "owner").count > 0
      true
    end
  end

  def needs_password?
    if new_record? && registered
      true
    end

  end

end
