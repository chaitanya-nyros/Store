class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
	  t.string :title
      t.text :description
      t.integer :price
      
      t.integer :vat
      t.float :total_price
      t.integer :product_id

      t.timestamps
    end
  end
end
