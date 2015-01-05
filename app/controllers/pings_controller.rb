class PingsController < ApplicationController
  before_action :setup_nested, except: :history
  before_action :set_ping, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pings = @target.pings
    respond_with(@target, @schedule, @pings)
  end

  def history
    @pings = Ping.all
    @targets = @current_user.targets
  end

  def show
    respond_with(@target, @schedule, @ping)
  end

  def new
    @ping = Ping.new
    respond_with(@target, @schedule, @ping)
  end

  def edit
  end

  def create
    @ping = Ping.new(ping_params)
    @ping.save
    respond_with(@target, @schedule, @ping)
  end

  def update
    @ping.update(ping_params)
    respond_with(@target, @schedule, @ping)
  end

  def destroy
    @ping.destroy
    respond_with(@target, @schedule, @ping)
  end

  private
    def setup_nested
      @target = Target.find(params[:target_id])
      @schedule = Schedule.find(params[:schedule_id])
    end

    def set_ping
      @ping = Ping.find(params[:id])
    end

    def ping_params
      params.require(:ping).permit(:http_code, :schedule_id, :target_id)
    end
end
