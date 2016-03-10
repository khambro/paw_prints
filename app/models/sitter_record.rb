class SitterRecord < ActiveRecord::Base
  belongs_to :sitter, class_name: "User"
  belongs_to :pet
  validates  :pet_id, uniqueness: {scope: :sitter_id}
end
