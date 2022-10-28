class ConfirmsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :manager_only, except: [:index]
  before_action :confirm_all, only: [:index, :new, :create, :edit, :update]
  before_action :set_confirm, only: [:edit, :update, :destroy]

  def index
    @comments = Comment.includes(:user).order(id: :ASC)
    @comment = Comment.new
  end

  def new
    @hopes = Hope.all
    @confirm = Confirm.new
  end

  def create
    @hopes = Hope.all
    start_time = start_time_save
    end_time = end_time_save
    @confirm = Confirm.new(confirm_params)
    if @confirm.save
      redirect_to new_confirm_path
    else
      render :new
    end
  end

  def edit
    @hopes = Hope.all
    @hope = Hope.new
  end

  def update
    if @confirm.update(confirm_params)
      redirect_to new_confirm_path
    else
      render :edit
    end
  end

  def destroy
    @confirm.destroy
    redirect_to new_confirm_path
  end

  private

  def confirm_all
    @confirms = Confirm.all
  end

  def manager_only
    redirect_to root_path if current_user.account_type_id != 3
  end

  def confirm_params
    params.require(:confirm).permit(:user_id, :work_status_id, :content, :start_time, :end_time).merge(hope_id: params[:hope_id])
  end

  def start_time_save
    sdtos = (params[:confirm]['start_time(1i)'] + params[:confirm]['start_time(2i)'] + params[:confirm]['start_time(3i)'] + params[:confirm]['start_time(4i)'] + params[:confirm]['start_time(5i)'])
    sstoi = sdtos.to_i
  end

  def end_time_save
    edtos = (params[:confirm]['end_time(1i)'] + params[:confirm]['end_time(2i)'] + params[:confirm]['end_time(3i)'] + params[:confirm]['end_time(4i)'] + params[:confirm]['end_time(5i)'])
    estoi = edtos.to_i
  end

  def set_confirm
    @confirm = Confirm.find(params[:id])
  end
end
