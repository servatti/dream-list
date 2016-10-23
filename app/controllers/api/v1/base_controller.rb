class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session

  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  respond_to :json

  def not_found
    return render(json: { errors: 'Not found' }, status: 404)
  end

  def current_user
    User.find_by(token: request.headers['token'])
  end
end
