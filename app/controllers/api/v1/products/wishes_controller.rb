class Api::V1::Products::WishesController < Api::V1::BaseController
  def create
    wish = current_user.wishes.build(product_id: params[:product_id], shop_id: params[:shop_id])

    if wish.save
      head :ok
    else
      head :unprocessable_entity
    end
  end

  def destroy
    current_user.wishes.find_by(product_id: params[:product_id], shop_id: params[:shop_id]).delete
    head :ok
  end
end
