class Creature < ApplicationRecord
  has_many :actions
  has_many :skills
  has_and_belongs_to_many :abilities
  has_and_belongs_to_many :spells
  has_and_belongs_to_many :damage_immunities
  has_and_belongs_to_many :damage_vulnerabilities
  has_and_belongs_to_many :damage_resistances
  has_and_belongs_to_many :condition_immunities
end
