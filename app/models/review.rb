class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5], message: "is not a rating between 1 & 5" }, numericality: { only_integer: true}
end
