class ProductsController < ApplicationController
  def index
    @product = Product.all
  end
  def show
    @product = Product.find(params[:id])
  end
  private
  def product_params
    params.require(:product).permit(:id, :title, :description, :author, :price)
  end
end
