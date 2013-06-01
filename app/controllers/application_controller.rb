class ApplicationController < ActionController::Base
  protect_from_forgery
  # before_filter :authenticated_user

  def authenticated_user
    unless user_signed_in?
      redirect_to root_url
    end
  end
end
