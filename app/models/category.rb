# app/models/category.rb
class Category < ApplicationRecord
    belongs_to :user
    has_many :transactions
  
    validates :name, presence: true
    validates :icon, presence: true
  
    def total_amount
      transactions.sum(:amount)
    end
  end
  