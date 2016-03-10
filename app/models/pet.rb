class Pet < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :owner, class_name: "User"
  has_many :reports
  has_many :sitter_records
end
