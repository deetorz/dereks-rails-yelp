class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w[Chinese Italian Japanese French Belgian]
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: CATEGORIES }
  validates :phone_number, format: { with: /\d{3}\.\d{3}\.\d{4}/, message: '- invalid format.' }
end
