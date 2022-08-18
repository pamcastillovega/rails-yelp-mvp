class Restaurant < ApplicationRecord
  # add "dependent :detroy" to ensure children are destroyed with self
  has_many :reviews, dependent: :destroy

  validates :name, :address, presence: true
  validates :category, presence: true, inclusion: { in: %w(chinese italian japanese french belgian), message: "%{value} is not a valid category" }
end
