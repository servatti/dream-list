class Api::V1::Shops::ProductsController < Api::V1::BaseController

  def index
    shop = Shop.find(params[:shop_id])
    respond_with shop.products.map { |p|
      p.attributes.merge({
        shop_id: shop.id,
        is_wished: current_user.wishes.map(&:product_id).include?(p.id),
        link: "https://#{shop.shopify_domain}/products/#{p.handle}"
      })
    }
  end

  def show
    respond_with Shop.find(params[:shop_id]).product(params[:id])
  end
end
