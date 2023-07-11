# app/controllers/transactions_controller.rb
class TransactionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_category
  before_action :set_transaction, only: [:show]

  def new
    @transaction = @category.transactions.build
  end

  def create
    @transaction = @category.transactions.build(transaction_params)
    @transaction.user = current_user # Set the user ID
    if @transaction.save
      redirect_to category_path(@category), notice: 'Transaction created successfully.'
    else
      render :new
    end
  end

  private

  def set_category
    @category = current_user.categories.find(params[:category_id])
  end

  def set_transaction
    @transaction = @category.transactions.find(params[:id])
  end

  def transaction_params
    params.require(:transaction).permit(:name, :amount, :category_id)
  end
end
