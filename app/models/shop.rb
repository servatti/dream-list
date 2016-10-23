class Shop < ActiveRecord::Base
  include ShopifyApp::Shop
  include ShopifyApp::SessionStorage

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
