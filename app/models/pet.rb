class Pet < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :owner, class_name: "User"
  belongs_to :sitter, class_name: "User"
  belongs_to :unregistered
  has_many :reports


end
