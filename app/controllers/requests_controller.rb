class RequestsController < ApplicationController
  def index
    @requests = Request.all
  end
  def new
    @request = Request.new
  end
  def create
    Request.create(request_parameter)
    redirect_to requests_index_path
  end

  private

  def request_parameter
    params.require(:request).permit(:title, :content, :start_time, :end_time).merge(user_id: current_user.id)
  end
end
