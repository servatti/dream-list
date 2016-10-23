class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :url, :wishes

  def name
    object.shop_data.name
  end

  def url
    object.shop_data.myshopify_domain
  end

  def wishes
    Wish.where(shop_id: object.id).count
  end
end
