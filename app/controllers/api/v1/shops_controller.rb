class Api::V1::ShopsController < Api::V1::BaseController

  def index
    respond_with ActiveModel::Serializer::CollectionSerializer.new(Shop.all)
  end

  def show
    respond_with Shop.find(params[:id])
  end
end
