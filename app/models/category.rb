class Category < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_many :transactionzs
  validates :user_id, presence: true
  validates :name, presence: true, length: { maximum: 50 }

  def total_amount
    amount = 0
    transactionzs.each do |transactionz|
      amount += transactionz.amount.to_f
    end
    amount
  end
end
