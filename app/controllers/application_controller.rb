class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def login_required
    user = User.find_by(id: session['user_id'])
    if user.blank?
      redirect_to('/sessions/new')
    end
  end
end