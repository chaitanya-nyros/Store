class ProductsController < ApplicationController

	before_filter :require_login, only: [:index]

	def require_login
		a = "=================================================================================="
		puts a.inspect
	end


	
	def index

		@products = Product.find(:all)

	end

	def show

		@product = Product.find(params[:id])

	end

	 def new
	 	
	 	@product = Product.new

	 end

	def create
    	@product = Product.new(params[:product])
    	
		if Product.last
			@temp = Product.last.pid
			@ext = @temp.gsub(/[^\d]/, '')
			@pid = "PDA #{@ext.to_i + 1}"
		else
			@pid = "PDA 1000"
		end
		@product.update_attributes("pid" => @pid)
        
        if @product.save
        	ProductMailer.product_confirm.deliver
        	redirect_to action: "index"

        else
        	render action: "new" 
        end

  	end
	
	def edit
	 	
	 	@product = Product.find(params[:id])

    end

	def update
	 	@product = Product.find(params[:id])
	 	if @product.update_attributes(params[:product])
	 		redirect_to @product, notice: "Product was successfully Updates"
		else
			redirect_to :action => "new"
  		end
 	end

	def destroy
	 	@product = Product.find(params[:id])
	 	@product.destroy
	 	redirect_to :action => "index"
	 end

end
