require 'rails_helper'

RSpec.describe TransactionsController, type: :controller do
  include Devise::Test::IntegrationHelpers
  include Devise::Test::ControllerHelpers

  before :each do
    @user = User.create(name: 'Caleb Nwaizu', email: 'calebchris000@gmail.com', password: 111_111)
    sign_in @user
    @category = Category.create(name: 'Test Category', icon: 'icon-url', user: @user)
  end

  describe 'POST #create' do
    it 'creates a new transaction' do
      transaction_params = { transaction: { name: 'New Transaction', amount: 10, category_id: @category.id } }

      expect do
        post :create, params: transaction_params.merge(category_id: @category.id)
      end.to change(Transaction, :count).by(1)

      expect(response).to redirect_to(category_path(@category))
    end
  end
end
