class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # helper methods available to controller
  helper_method :current_user

  private
  # if session has user id, then find user, make them current user
  def current_user
    @current_user ||=User.find(session[:user_id]) if session[:user_id]
  end

  def authenticate!
    redirect_to :signin unless current_user
  end
end
