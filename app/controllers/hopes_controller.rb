class HopesController < ApplicationController
  def index
    @hopes = Hope.all
  end
  def new
    @hope = Hope.new
  end
  def create

    Hope.create(hope_parameter)
    redirect_to root_path
  end

  private

  def hope_parameter
    params.require(:hope).permit(:title, :content, :start_time, :end_time).merge(user_id: current_user.id)
  end

end