class Api::V1::UsersController < Api::V1::BaseController

  def show
    respond_with User.find(params[:id])
  end

  def create
    respond_with :api, :v1, User.login_with(params[:email], params[:token])
  end
end
