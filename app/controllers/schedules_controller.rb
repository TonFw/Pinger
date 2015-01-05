class SchedulesController < ApplicationController
  before_action :setup_nested
  before_action :set_schedule, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @schedules = Schedule.where(target_id: params[:target_id])
    respond_with(@schedules)
  end

  def show
    respond_with(@schedule)
  end

  def new
    @schedule = Schedule.new
    respond_with(@schedule)
  end

  def edit
  end

  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.save
    respond_with(@target, @schedule)
  end

  def update
    @schedule.update(schedule_params)
    respond_with(@target, @schedule)
  end

  def destroy
    @schedule.destroy
    respond_with(@target, @schedule)
  end

  private
    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    def schedule_params
      params.require(:schedule).permit(:hour).merge(target_id:params[:target_id])
    end

    def setup_nested
      @target = Target.find(params[:target_id])
    end
end
