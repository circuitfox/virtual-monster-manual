class Ability < ApplicationRecord
  belongs_to :creature
  validates :name, presence: true
  validates :creature, presence: true
  validates :description, presence: true
end
