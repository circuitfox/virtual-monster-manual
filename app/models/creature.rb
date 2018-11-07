class Creature < ApplicationRecord
  # we're not going to use this, but it conflicts with the 'type'
  # column so we need to give it another name
  self.inheritance_column = 'inheritance_type'

  has_many :creature_actions, dependent: :destroy
  has_many :skills, dependent: :destroy
  has_many :abilities, dependent: :destroy
  has_and_belongs_to_many :spells
  has_and_belongs_to_many :damage_immunities
  has_and_belongs_to_many :damage_vulnerabilities
  has_and_belongs_to_many :damage_resistances
  has_and_belongs_to_many :condition_immunities
  has_and_belongs_to_many :languages

  accepts_nested_attributes_for :creature_actions, :skills, :abilities,
    :spells, :damage_immunities, :damage_vulnerabilities, :damage_resistances,
    :condition_immunities, :languages, allow_destroy: true, reject_if: :all_blank

  #validations here, with itself
  validates :name, :type, :size, :alignment, presence: true
  validates :ac, :hp, :speed, :swim, :burrow, :climb, :fly, :strength,
    :dexterity, :constitution, :intellect, :wisdom, :charisma, :perception,
    :blindsight, :darkvision, :tremorsense, :truesight, :challenge, presence: true,
    numericality: { only_integer: true }
  validates :hp_dice, dice: { message: "Dice should be in form 1d4 + 8" }
  validates :str_saving, :dex_saving, :con_saving, :int_saving,
    :wis_saving, :chr_saving, numericality: { only_integer: true, allow_nil: true }

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
      !self.str_saving.nil? ||
        !self.dex_saving.nil? ||
        !self.con_saving.nil? ||
        !self.int_saving.nil? ||
        !self.wis_saving.nil? ||
        !self.chr_saving.nil?
    end

    def self.search(attrs)
      likes = []
      data = []
      attrs.each_pair { |(key, query)|
        likes << "#{key} LIKE ?"
        data << "%#{query}%"
      }
      sql = likes.join(" AND ")
      self.where(sql, *data)
    end
end
