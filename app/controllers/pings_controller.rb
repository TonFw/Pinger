class PingsController < ApplicationController
  before_action :set_ping, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @pings = Ping.all
    respond_with(@pings)
  end

  def show
    respond_with(@ping)
  end

  def new
    @ping = Ping.new
    respond_with(@ping)
  end

  def edit
  end

  def create
    @ping = Ping.new(ping_params)
    @ping.save
    respond_with(@ping)
  end

  def update
    @ping.update(ping_params)
    respond_with(@ping)
  end

  def destroy
    @ping.destroy
    respond_with(@ping)
  end

  private
    def set_ping
      @ping = Ping.find(params[:id])
    end

    def ping_params
      params.require(:ping).permit(:http_code, :scheduled_id, :target_id)
    end
end
