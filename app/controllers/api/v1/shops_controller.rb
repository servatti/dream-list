class Api::V1::ShopsController < Api::V1::BaseController

  def index
    @shops = Shop.all

    render json: @shops.as_json
  end

  def show
    @shop = Shop.find(params[:id])

    render json: @shop.as_json(methods: [:products])
  end
end
