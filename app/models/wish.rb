class Wish < ActiveRecord::Base
  belongs_to :user
  belongs_to :shop

  validates :product_id, uniqueness: { scope: [:user, :shop_id] }
end
