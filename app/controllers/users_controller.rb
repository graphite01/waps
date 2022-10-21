class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @confirm = @user.confirms
  end
end
