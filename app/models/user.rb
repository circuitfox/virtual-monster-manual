class User < ApplicationRecord
  has_secure_password
  has_many :creature_sets

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password, length: { minimum: 8 }, allow_nil: false, on: :create
  validates :password, length: { minimum: 8 }, allow_nil: true

  def admin?
    return self.admin
  end
end
