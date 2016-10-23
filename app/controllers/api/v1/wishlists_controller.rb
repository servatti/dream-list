class Api::V1::WishlistsController < Api::V1::BaseController
  def index
    respond_with current_user.whishes
  end
end
