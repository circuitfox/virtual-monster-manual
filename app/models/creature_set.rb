class CreatureSet < ApplicationRecord
  include Searchable
  belongs_to :user
  has_and_belongs_to_many :creatures

  # validates :creature, :name, presence: true
  validates :user_id, :name, :description, presence: true
end
