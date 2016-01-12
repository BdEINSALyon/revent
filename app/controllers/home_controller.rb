class HomeController < ApplicationController
  def index
    if user_signed_in?
      redirect_to :action => :my_team
    end
  end
  def my_team
    if current_user.team.nil?
      redirect_to :action => :create_my_team
    end
  end
  def create_my_team
    unless current_user.team.nil?
      redirect_to :action => :my_team
    end
  end
end
