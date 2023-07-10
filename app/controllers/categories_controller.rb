# app/controllers/categories_controller.rb
class CategoriesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_category, only: [:show]
  
    def index
      @categories = current_user.categories
    end
  
    def show
      @transactions = @category.transactions.order(created_at: :desc)
      @total_amount = @category.total_amount
      @oldest_transactions = @category.transactions.order(created_at: :asc)
    end
  
    def new
      @category = Category.new
    end
  
    def create
      @category = current_user.categories.build(category_params)
      if @category.save
        redirect_to categories_path, notice: "Category created successfully."
      else
        render :new
      end
    end
  
    private
  
    def set_category
      @category = current_user.categories.find(params[:id])
    end
  
    def category_params
      params.require(:category).permit(:name, :icon)
    end
  end
  