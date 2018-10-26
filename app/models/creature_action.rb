class CreatureAction < ApplicationRecord
  belongs_to :creature

  validates :creature, :name, :description, presence: true
  validates :damage_dice, format: { with: /\A\d+d\d+\ ?(\+|-)\ ?\d+|\d+d\d+\Z/, 
    message:"Dice should be in form 1d4 + 8" }
  validates :range, presence: true, numericality: { only_integer: true }
  
end
