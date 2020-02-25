class TransactionsController < ApplicationController
  def show
    @transaction = Transaction.find(params[:id])
  end

  def new
    @transaction = Transaction.new
  end

  def create
    @bike = Bike.find(params[:bike_id])
    @user = current_user
    @transaction = Transaction.new(user_id: @user.id, bike_id: @bike.id)
    if @transaction.save
      redirect_to transaction_path(@transaction)
    else
      redirect_to bike_path(@bike)
    end
  end
end
