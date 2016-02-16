class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to controller: 'team', action: 'show'
    end
  end
end
