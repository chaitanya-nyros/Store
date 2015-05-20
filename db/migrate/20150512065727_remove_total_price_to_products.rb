class RemoveTotalPriceToProducts < ActiveRecord::Migration
  def up
    remove_column :products, :total_price
  end

  def down
    add_column :products, :total_price, :intiger
  end
en
