class Creature < ApplicationRecord
  # we're not going to use this, but it conflicts with the 'type'
  # column so we need to give it another name
  self.inheritance_column = 'inheritance_type'

  has_many :creature_actions, dependent: :destroy
  has_many :skills, dependent: :destroy
  has_and_belongs_to_many :abilities
  has_and_belongs_to_many :spells
  has_and_belongs_to_many :damage_immunities
  has_and_belongs_to_many :damage_vulnerabilities
  has_and_belongs_to_many :damage_resistances
  has_and_belongs_to_many :condition_immunities
  has_and_belongs_to_many :languages

  enum size: [:tiny, :small, :medium, :large, :huge, :gargantuan], _prefix: :size
  enum type: [
    :abberation,
    :beast,
    :celestial,
    :construct,
    :dragon,
    :fey,
    :fiend,
    :elemental,
    :giant,
    :humanoid,
    :monstrosity,
    :ooze,
    :plant,
    :undead], _prefix: :type

    def saving_throws?
      self.str_saving != 0 ||
        self.dex_saving != 0 ||
        self.con_saving != 0 ||
        self.int_saving != 0 ||
        self.wis_saving != 0 ||
        self.chr_saving != 0
    end
end
