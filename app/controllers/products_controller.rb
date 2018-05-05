class ProductsController < ApplicationController

  def index
    @products = Product.all.order("created_at DESC")
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params.require(:product).permit(:title, :description, :quantity))
    if @product.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

    def product_params
      params.require(:product).permit(:title, :description, :quantity)
    end

end
