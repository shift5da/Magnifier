class HomeController < ApplicationController
  def index

    user = User.find(session[:current_user_id])

    if user.is_company?   #role = company
      @company = user.company
    else
      puts 'bbb'
    end

  end
end
