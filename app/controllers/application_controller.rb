class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_user

  # Do we have a @current_user variable? if not try to find a user in the db using the session id
  def current_user
    @current_user ||= User.find_by_id(session[:user_id])

    # if @current_user
    #   return @current_user
    # end

    user_id = session[:user_id]
    @current_user = User.find_by_id(user_id)
    return @current_user
  end

  # Methods defined as helper_methods are available in the views
  # ------------------------------------------------------------
  helper_method :current_user
end
