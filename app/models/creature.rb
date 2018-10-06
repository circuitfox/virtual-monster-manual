class Creature < ApplicationRecord
  has_many :actions
  has_and_belongs_to_many :abilities
end
