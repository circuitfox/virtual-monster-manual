class Spell < ApplicationRecord
  has_and_belongs_to_many :creatures

  validates :name, :description, presence: true
  validates :dice, dice: { message: "Dice should be in form 1d4 + 8" }
  validates :level, presence: true, numericality: { only_integer: true }

end
