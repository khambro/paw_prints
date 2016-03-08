class Report < ActiveRecord::Base
  has_many :images
  belongs_to :sitter, class_name: "User"
  belongs_to :owner, class_name: "User"
  belongs_to :pet
end
