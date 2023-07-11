require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { User.create(name: 'Test User', email: 'test@example.com', password: 'password') }
  let(:category) { Category.create(name: 'Test Category', icon: 'icon-url', user:) }

  describe 'Associations' do
    let(:transaction) { Transaction.create(name: 'Test Transaction', amount: 10, category:, user:) }

    it 'belongs to a user' do
      expect(category.user).to eq(user)
    end

    it 'has many transactions' do
      expect(category.transactions).to include(transaction)
    end
  end

  describe 'validations' do
    it 'validates presence of name' do
      transaction = Transaction.new(amount: 10, category:, user:)
      expect(transaction).not_to be_valid
      expect(transaction.errors[:name]).to include("can't be blank")
    end

    it 'validates presence of amount' do
      transaction = Transaction.new(name: 'Test Transaction', category:, user:)
      expect(transaction).not_to be_valid
      expect(transaction.errors[:amount]).to include("can't be blank")
    end
  end

  describe '#total_amount' do
    it 'returns the sum of all transaction amounts for the category' do
      Transaction.create(name: 'Transaction 1', amount: 10, category:, user:)
      Transaction.create(name: 'Transaction 2', amount: 20, category:, user:)

      expect(category.total_amount).to eq(30)
    end

    it 'returns 0 if there are no transactions for the category' do
      expect(category.total_amount).to eq(0)
    end
  end
end
