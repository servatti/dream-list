class Api::V1::WishlistsController < ApplicationController
  def index
    respond_with current_user.whishes
  end
end
