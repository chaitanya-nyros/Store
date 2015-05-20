class AddTotalPriceToProducts < ActiveRecord::Migration
  def change
    add_column :products, :total_price, :float
  end
end
