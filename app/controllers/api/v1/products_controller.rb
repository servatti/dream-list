class Api::V1::ProductsController < Api::V1::BaseController

  def index
    products = []
    Shop.all.each do |shop|
      products += shop.products
    end

    respond_with products
  end
end
