class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :url

  def name
    object.shop_data.name
  end

  def url
    object.shop_data.myshopify_domain
  end
end
