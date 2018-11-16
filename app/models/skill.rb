class Skill < ApplicationRecord
  belongs_to :creature

  validates :creature, :name, presence: true
  validates :bonus, presence: true, numericality: { only_integer: true }

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
