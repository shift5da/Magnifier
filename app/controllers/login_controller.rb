class LoginController < ApplicationController
  skip_before_action :require_login


  def index
  end

  def auth
    # code

    user = User.authenticate(params[:account], params[:password])

    if user.nil?
      redirect_to "/"
    else
      session[:current_user_id] = user.id
      session[:current_user_name] = user.name
      redirect_to "/home"
    end
  end
end
