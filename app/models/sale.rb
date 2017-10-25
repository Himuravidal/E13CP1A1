class Sale < ApplicationRecord
  validates :cod, uniqueness: true
  validates :detail, presence: true
  validates :category, inclusion: { in: [1, 2, 3, 4, 5] }
  validates :value, numericality: { greater_than_or_equal_to: 0, only_integer: true }
  validates :discount, numericality: { less_than_or_equal_to: 40, only_integer: true }
end
