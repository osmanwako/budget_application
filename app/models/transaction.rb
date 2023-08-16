class Transaction < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_one_attached :logo
  validates :user_id, presence: true
  validates :category_id, presence: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 100 }
  validates :amount, presence: true, numericality: { greater_than: 0, less_than: 1000000000 }
end
