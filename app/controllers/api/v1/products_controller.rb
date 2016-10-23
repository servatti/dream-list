class Api::V1::ProductsController < Api::V1::BaseController

  def index
    products = []
    Shop.all.each do |shop|
      products += shop.products.map do |p|
        p.attributes.merge({
          shop_id: shop.id,
          is_wished: current_user.wishes.map(&:product_id).include?(p.id),
          link: "https://#{shop.shopify_domain}/products/#{p.handle}"
        })
      end
    end

    respond_with products
  end
end
