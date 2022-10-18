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
    @hope = Hope.find(params[:id])
  end
  def update
    if @hope.update(hope_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def hope_parameter
    params.require(:hope).permit(:work_status_id, :content, :start_time, :end_time).merge(user_id: current_user.id)
  end

end