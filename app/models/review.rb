class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true, length: { minimum: 20 }
  validates :rating, numericality: true, inclusion: { in: 1..5 }
end
