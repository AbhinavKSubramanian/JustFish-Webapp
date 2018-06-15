class ProductsController < ApplicationController
before_action :authenticate_user!, except: [:show, :index]

def index
    @categories = Category.all
    @main = Main.find_by(id: '1')
    @newarrivals = @main.newarrivals.all

end

def show
    @category = Category.find(params[:category_id])
    @product = @category.products.find(params[:id])
end


def create
	  @category = Category.find(params[:category_id])
  	@product = @category.products.create(product_params)
  	redirect_to category_path(@category)
end

def destroy
  	@category = Category.find(params[:category_id])
  	@product = @category.products.find(params[:id])
  	@product.destroy
  	redirect_back fallback_location: root_path
end

private
  def product_params
    params.require(:product).permit(:pdtname, :pdtdescp, :pdtimg)
  end

end
