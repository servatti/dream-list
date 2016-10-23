class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.belongs_to :shop, index: true, foreign_key: true
      t.integer :product_id, limit: 8

      t.timestamps null: false
    end
  end
end
