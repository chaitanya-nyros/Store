class AddPidToProducts < ActiveRecord::Migration
  def self.up
    add_column :products, :pid, :string
    remove_column :products ,:product_id
  end
  def self.down
    remove_column :products ,:pid
    add_column :products ,:product_id ,:integer
  end
end
 
