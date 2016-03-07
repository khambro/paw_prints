class Role < ActiveRecord::Base
  belongs_to :user
  belongs_to :unregistered_user

end
