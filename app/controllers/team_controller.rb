class TeamController < ApplicationController

  before_action :authenticate_user!

  def create
    @team = Team.new team_params_full
    if @team.valid?
      @team.users << current_user
      @team.save!
      redirect_to :action => :show
    else
      render 'new'
    end
  end

  def new
    unless current_user.team.nil?
      redirect_to :action => :edit
    end
    @team = Team.new
    @team.participants << current_user.as_participant
  end

  def update
    current_user.team.update team_params
    redirect_to :action => :show
  end

  def edit
    if current_user.team.nil?
      redirect_to :action => :new
    end
    @team = current_user.team
  end

  def show
    if current_user.team.nil?
      redirect_to :action => :new
    end
    @team = current_user.team
  end

  private

  def team_params
    params.require(:team).permit(:name, :has_card_reader)
  end

  def team_params_full
    params.require(:team).permit(:name, :has_card_reader, :participants_attributes =>
        [:first_name, :last_name, :email, :email_confirmation, :gender, :birthday, :departement, :vtt,
         :shirt_size, :meal, :other])
  end
end
