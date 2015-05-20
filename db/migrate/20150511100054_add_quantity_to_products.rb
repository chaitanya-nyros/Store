class AddQuantityToProducts < ActiveRecord::Migration
  def self.up
	add_column :products ,:quantity ,:integer
	remove_column :products ,:quntity
  end
 def self.down
	remove_column :products ,:quantity
	add_column :products ,:quntity ,:integer
 end
