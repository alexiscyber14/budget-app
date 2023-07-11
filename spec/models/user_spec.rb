require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) do
    User.create(name: 'Test User', email: 'test@example.com', password: 'password', password_confirmation: 'password')
  end
  let(:category) { Category.create(name: 'Test Category', icon: 'icon-url', user:) }

  describe 'associations' do
    let(:category) { Category.create(name: 'Test Category', icon: 'icon-url', user:) }
    let(:transaction) { Transaction.create(name: 'Test Transaction', amount: 10, category:, user:) }

    it 'has many categories' do
      expect(user.categories).to include(category)
    end

    it 'has many transactions' do
      expect(user.transactions).to include(transaction)
    end
  end

  describe 'devise modules' do
    it 'responds to email' do
      expect(user.email).to eq('test@example.com')
    end

    it 'responds to password' do
      expect(user.password).to eq('password')
    end

    it 'responds to password_confirmation' do
      expect(user.password_confirmation).to eq('password')
    end

    it 'responds to remember_me' do
      expect(user.remember_me).to be_falsey
    end
  end
end
