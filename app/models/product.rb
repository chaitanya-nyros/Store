class Product < ActiveRecord::Base
  attr_accessible :title, :description, :price, :quantity, :quntity, :vat, :total_price, :pid
  validates :title, :presence => 'true'
  validates :price, :presence => 'true' , :numericality => {:only_integer => true}
  validates :quantity, :presence => 'true', :numericality => {:only_integer => true}
  validates :vat, :presence => 'true', :numericality => {:only_integer => true,	 :greater_than => 0, :less_than_or_equal_to => 100 }

  after_create :cal

   protected
  	def cal
        @product = Product.last
		@cal =(@product.vat/100.0) * @product.price
		@total_price = (@cal + @product.price) * @product.quantity
		@product.update_attributes("total_price" => @total_price)
	end
  

end
