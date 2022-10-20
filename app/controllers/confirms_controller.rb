class ConfirmsController < ApplicationController
  def index
    #@confirms = Confirm.all 作成後に切り替え
    @confirms = Confirm.all
  end
  def new
    @confirms = Confirm.all
    @hope = Hope.new
  end
  def edit
    @confirm = @confirm_date.all
    @confirm = Confirm.find(params[:id])
  end
end
