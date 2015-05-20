class AddQuntityToProducts < ActiveRecord::Migration
  def change
    add_column :products, :quntity, :integer
  end
end
