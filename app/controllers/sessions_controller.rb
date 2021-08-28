class SessionsController < ApplicationController
  def new
  end

  def create
    @account = Account.find_by(username: params[:username])

    if @account && @account.authenticate(params[:password])
       session[:user_id] = @account.id
       redirect_to '/'
    else
       redirect_to '/sessions/login', notice: "Tài khoản hoặc mật khẩu không hợp lệ"

    end
  end

  def login

  end

  def welcome
  end
  def destroy
    # Account.find(session[:user_id]).destroy      
    session[:user_id] = nil         
    redirect_to '/' 
  end  
end
