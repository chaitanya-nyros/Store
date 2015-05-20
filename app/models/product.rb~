class Product < ActiveRecord::Base
  attr_accessible :title, :description, :price, :quantity, :vat, :total_price, :pid
  validates :title, :presence => 'true'
  validates :price, :presence => 'true' , :numericality => {:only_integer => true}
  validates :quantity, :presence => 'true', :numericality => {:only_integer => true}
  validates :vat, :presence => 'true', :numericality => {:only_integer => true,	 :greater_than => 0, :less_than_or_equal_to => 100 }
end
