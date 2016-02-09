class TeamController < ApplicationController

  before_action :authenticate_user!

  def create
    @team = Team.new team_params
    @team.participants.each do |participant|
      if participant.first_name.empty? and participant.last_name.empty?
        @team.participants.delete participant
      end
    end
    if @team.valid?
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
  end

  def edit
    if current_user.team.nil?
      redirect_to :action => :new
    end
  end

  def show
    if current_user.team.nil?
      redirect_to :action => :new
    end
    @team = current_user.team
    @team.participants.each do |participant|
      if participant.first_name.empty? and participant.last_name.empty?
        @team.participants.delete participant
      end
    end
    @team.save!
  end

  private

  def team_params
    params.require(:team).permit(:name, :participants_attributes => [:first_name, :last_name, :user_id, :user])
  end
end
