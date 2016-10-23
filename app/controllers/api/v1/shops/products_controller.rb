class Api::V1::Shops::ProductsController < Api::V1::BaseController

  def index
    respond_with Shop.find(params[:shop_id]).products
  end

  def show
    respond_with Shop.find(params[:shop_id]).product(params[:id])
  end
end
