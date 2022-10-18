class HopesController < ApplicationController
  def index
    @hopes = Hope.all
    @hope = Hope.new
  end
  def new
  end
  def create
    Hope.create(hope_parameter)
    redirect_to hopes_path
  end

  def edit
    @hopes = Hope.all
    @hope = Hope.find(params[:id])
  end
  def update
    @hope = Hope.find(params[:id])
    @hope.update(hope_parameter)
    redirect_to hopes_path
  end

  private

  def hope_parameter
    params.require(:hope).permit(:work_status_id, :content, :start_time, :end_time).merge(user_id: current_user.id)
  end

end