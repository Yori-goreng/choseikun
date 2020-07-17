class Magic < ApplicationRecord
  has_many :character_magics, dependent: :destroy
  has_many :characters, through: :character_magics
  
  validates :name, presence: true
end
