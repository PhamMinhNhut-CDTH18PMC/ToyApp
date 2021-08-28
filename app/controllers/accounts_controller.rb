class AccountsController < ApplicationController

  def new
  end

  def create
    # @account = Account.create(params.require(:account).permit(:username,:password_digest))
    # session[:user_id] = @account.id
    # redirect_to '/login'
    @account= Account.new(account_params)
    if @account.save
      # session[:user_id] = @account.id
      redirect_to '/sessions/login'
    else 
      redirect_to '/sessions/signup'
    end
  end
  private
  def account_params
    params.permit(:username, :password) 
  end
end
