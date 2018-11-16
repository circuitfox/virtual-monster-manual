class CreatureAction < ApplicationRecord
  belongs_to :creature

  validates :creature, :name, :description, presence: true
  validates :damage_dice, dice: { message: "Dice should be in form 1d4 + 8" }
  validates :range, presence: true, numericality: { only_integer: true }

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
