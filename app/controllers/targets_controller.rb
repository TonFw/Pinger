class TargetsController < ApplicationController
  before_action :set_target, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @targets = Target.all
    respond_with(@targets)
  end

  def show
    @pings = @target.pings
    respond_with(@target)
  end

  def new
    @target = Target.new
    respond_with(@target)
  end

  def edit
  end

  def create
    @target = Target.new(target_params)
    @target.user_id = @current_user.id
    flash[:notice] = 'Target created successfully' if @target.save
    respond_with(@target)
  end

  def update
    @target.update(target_params)
    respond_with(@target)
  end

  def destroy
    @target.destroy
    respond_with(@target)
  end

  private
    def set_target
      @target = Target.find(params[:id])
    end

    def target_params
      params.require(:target).permit(:url, :user_id)
    end
end
