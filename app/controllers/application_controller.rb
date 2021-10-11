class ApplicationController < ActionController::Base
  before_action :require_login

  private

  def require_login
    unless session[:current_user_id]
      redirect_to "/" # halts request cycle
    end
  end
end
