class Ability < ApplicationRecord
  include Searchable

  belongs_to :creature
  validates :name, presence: true
  validates :creature, presence: true
  validates :description, presence: true

end
