class Category < ApplicationRecord
    belongs_to :user
    has_one_attached :icon
    has_many :transactions
    validates :user_id, presence: true
    validates :name, presence: true, length: { maximum: 50 }
end
