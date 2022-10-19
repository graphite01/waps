class HopesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  def index
    @hopes = Hope.all
  end
  def new
    @hopes = Hope.all
    @hope = Hope.new
  end
  def create
    @hopes = Hope.all
    @hope = Hope.new
    if @hope.save
      redirect_to hopes_path
    else
      render :new
    end
  end

  def edit
    @hopes = Hope.all
    @hope = Hope.find(params[:id])
  end
  def update
    @hope = Hope.find(params[:id])
    if @hope.update(hope_parameter)
      redirect_to hopes_path
    else
      render :edit
    end
  end
  
  def destroy
    @hope = Hope.find(params[:id])
    @hope.destroy
    redirect_to hopes_path
  end

  private

  def hope_parameter
    params.require(:hope).permit(:work_status_id, :content, :start_time, :end_time).merge(user_id: current_user.id)
  end

end