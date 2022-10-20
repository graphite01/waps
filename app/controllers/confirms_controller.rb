class ConfirmsController < ApplicationController
  before_action :manager_only, except: [:index]

  def index
    #@confirms = Confirm.all 作成後に切り替え
    @confirms = Confirm.all
  end
  def new
    @hopes = Hope.all
    @confirms = Confirm.all
    @hope = Hope.new
  end
  def edit
    @confirm = @confirm_date.all
    @confirm = Confirm.find(params[:id])
  end

  def manager_only
    if current_user.account_type_id != 3
      redirect_to root_path
    end
  end
end
