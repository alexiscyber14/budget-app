require 'rails_helper'

RSpec.describe Transaction, type: :model do
  let(:user) { User.create(name: 'John Doe', email: 'john@example.com', password: 'password') }
  let(:category) { Category.create(name: 'Food', icon: 'food-icon', user:) }
  let!(:transaction) { Transaction.create(name: 'Test Transaction', amount: 10, category:, user:) }

  describe 'associations' do
    it 'belongs to a user' do
      expect(transaction.user).to eq(user)
    end

    it 'belongs to a category' do
      expect(transaction.category).to eq(category)
    end
  end

  describe 'creating a transaction' do
    it 'is valid with valid attributes' do
      transaction = Transaction.new(
        name: 'Groceries',
        amount: 50.0,
        user:,
        category:
      )
      expect(transaction).to be_valid
    end

    it 'is not valid without a name' do
      transaction = Transaction.new(
        amount: 50.0,
        user:,
        category:
      )
      expect(transaction).not_to be_valid
      expect(transaction.errors[:name]).to include("can't be blank")
    end

    it 'is not valid without an amount' do
      transaction = Transaction.new(
        name: 'Groceries',
        user:,
        category:
      )
      expect(transaction).not_to be_valid
      expect(transaction.errors[:amount]).to include("can't be blank")
    end
  end
end
