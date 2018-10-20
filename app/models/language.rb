class Language < ApplicationRecord
  has_and_belongs_to_many :creatures
  validates :name, presence: true, uniqueness: true
end
