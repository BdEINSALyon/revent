class ParticipantsController < ApplicationController
  load_and_authorize_resource

  def index
    redirect_to @participant.team
  end

  def show
  end

  def create
    @participant.update participant_params
    @participant.team = current_user.team
    if @participant.valid?
      @participant.save!
      redirect_to @participant.team
    else
      render :new
    end
  end

  def new
  end

  def destroy
  end

  def update
    @participant.update participant_params
    if @participant.valid?
      @participant.save!
      redirect_to @participant.team
    else
      render :edit
    end
  end

  def edit
  end

  private

  def participant_params
    params.require(:participant).permit(:first_name, :last_name, :email, :email_confirmation, :gender, :birthday,
                                         :departement, :vtt, :shirt_size, :meal, :other)
  end
end
