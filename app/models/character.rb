class Character < ApplicationRecord
  extend Enumerize

  has_many :deathblows
  has_many :character_magics, dependent: :destroy
  has_many :magics, through: :character_magics
  accepts_nested_attributes_for :deathblows, allow_destroy: true

  enumerize :name, in: [:terra, :celes, :locke, :sabin]
  enumerize :sex, in: [:male, :female]

  validates :name, presence: true
  validates :sex, presence: true

  def build_default_deathblows
    (self.deathblows.count..7).each do
      self.deathblows.build
     end
  end
end