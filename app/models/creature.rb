class Creature < ApplicationRecord
  has_many :actions
  has_and_belongs_to_many :abilities
  has_and_belongs_to_many :spells
  has_many :skills
end
