class Shop < ActiveRecord::Base
  include ShopifyApp::Shop
  include ShopifyApp::SessionStorage

  def shop_data
    with_shopify_session do
      ShopifyAPI::Shop.current
    end
  end

  def products
    with_shopify_session do
      ShopifyAPI::Product.find(:all)
    end
  end

  def product(id)
    with_shopify_session do
      ShopifyAPI::Product.find(id)
    end
  end
end
