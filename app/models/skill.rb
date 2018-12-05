class Skill < ApplicationRecord
  include Searchable

  belongs_to :creature

  validates :creature, :name, presence: true
  validates :bonus, presence: true, numericality: { only_integer: true }

end
