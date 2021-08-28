class ApplicationController < ActionController::Base
    helper_method :current_user
    helper_method :logged_in?
    
    def current_user
       Account.find_by(id: session[:user_id])
    end
    def logged_in?
        !current_user.nil?
    end

    protected

  def authenticate_user!
    redirect_to '/sessions/login', notice: "You must login" unless logged_in?
  end

end
