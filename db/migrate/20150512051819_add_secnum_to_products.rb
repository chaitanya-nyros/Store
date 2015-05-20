class AddSecnumToProducts < ActiveRecord::Migration
  def change
    add_column :products, :secnum, :string
  end
end
