class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate

  def authenticate
     if (session[:user_id]||0).to_i==0
         flash[:notice]="请登录"
         redirect_to logn_users_url()
     end
  end
end
