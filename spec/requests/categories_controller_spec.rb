require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  include Devise::Test::IntegrationHelpers
  include Devise::Test::ControllerHelpers
  before :each do
    @user = User.create(name: 'Caleb Nwaizu', email: 'calebchris000@gmail.com', password: 111_111)
    sign_in @user
  end

  describe 'GET #index' do
    it 'returns success' do
      get :index
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    let(:category) { Category.create(name: 'Test Category', icon: 'icon-url', user: @user) }
    it 'returns success' do
      get :show, params: { id: category.id }
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns success' do
      get :new
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    it 'creates a new category' do
      category_params = { category: { name: 'New Category', icon: 'icon-url', user_id: @user.id } }

      expect do
        post :create, params: category_params
      end.to change(Category, :count).by(1)

      expect(response).to redirect_to(categories_path)
    end
  end
end
