class Transactionz < ApplicationRecord
  belongs_to :author, class_name: "User", foreign_key: "author_id", required: true
  belongs_to :category
  has_one_attached :logo
  validates :author_id, presence: true
  validates :category_id, presence: true
  validates :name, presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 1000 }
  validates :amount, presence: true, numericality: { greater_than: 0, less_than: 1000000000 }
end
