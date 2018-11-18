class CreatureSet < ApplicationRecord
  belongs_to :user

  validates :creature_set, :name, presence: true
  validates :bonus, presence: true, numericality: { only_integer: true }
end
