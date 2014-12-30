class ScheduledsController < ApplicationController
  before_action :set_scheduled, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @scheduleds = Scheduled.all
    respond_with(@scheduleds)
  end

  def show
    respond_with(@scheduled)
  end

  def new
    @scheduled = Scheduled.new
    respond_with(@scheduled)
  end

  def edit
  end

  def create
    @scheduled = Scheduled.new(scheduled_params)
    @scheduled.save
    respond_with(@scheduled)
  end

  def update
    @scheduled.update(scheduled_params)
    respond_with(@scheduled)
  end

  def destroy
    @scheduled.destroy
    respond_with(@scheduled)
  end

  private
    def set_scheduled
      @scheduled = Scheduled.find(params[:id])
    end

    def scheduled_params
      params.require(:scheduled).permit(:hour, :target_id)
    end
end
