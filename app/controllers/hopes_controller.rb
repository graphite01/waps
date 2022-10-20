class HopesController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :edit, :destroy]
  before_action :hope_all, only: [:index, :new, :create, :edit, :update]
  before_action :set_hope, only: [:edit, :update, :destroy]
  before_action :user_only_commodity, only: [:edit, :destroy]

  def index
  end

  def new
    @hope = Hope.new
  end

  def create
    start_time = start_time_save
    end_time = end_time_save
    @hope = Hope.new(hope_params)
    if @hope.save
      @confirm_date = Confirm.new(params.require(:hope).permit(:work_status_id, :content, :start_time, :end_time).merge(user_id: current_user.id, hope_id: @hope.id))
      @confirm_date.save
      redirect_to hopes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    start_time = start_time_save
    end_time = end_time_save
    if @hope.update(hope_params)
      @confirm_date = Confirm.find(params[:id])
      @confirm_date.update(params.require(:hope).permit(:work_status_id, :content, :start_time, :end_time).merge(user_id: current_user.id, hope_id: @hope.id))
      redirect_to hopes_path
    else
      render :edit
    end
  end

  def destroy
    @hope.destroy
    redirect_to hopes_path
  end

  private

  def hope_all
    @hopes = Hope.all
  end

  def hope_params
    params.require(:hope).permit(:work_status_id, :content, :start_time, :end_time).merge(user_id: current_user.id)
  end

  def start_time_save
    sdtos = (params[:hope]['start_time(1i)'] + params[:hope]['start_time(2i)'] + params[:hope]['start_time(3i)'] + params[:hope]['start_time(4i)'] + params[:hope]['start_time(5i)'])
    sstoi = sdtos.to_i
  end

  def end_time_save
    edtos = (params[:hope]['end_time(1i)'] + params[:hope]['end_time(2i)'] + params[:hope]['end_time(3i)'] + params[:hope]['end_time(4i)'] + params[:hope]['end_time(5i)'])
    estoi = edtos.to_i
  end

  def set_hope
    @hope = Hope.find(params[:id])
  end

  def user_only_commodity
    redirect_to action: :index unless @hope.user_id == current_user.id
  end
end
