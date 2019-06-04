class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if current_user.email == 'anisa.caja@yahoo.com'
      gifts_path
    else
      stored_location_for(resource)
    end
  end
end
