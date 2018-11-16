class Ability < ApplicationRecord
  belongs_to :creature
  validates :name, presence: true
  validates :creature, presence: true
  validates :description, presence: true
  
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
