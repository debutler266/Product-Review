class ProductsController < ApplicationController
  def index
    @products = Product.all.order("created_at DESC")
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    if @product.save
      redirect_to root_path
    else
      render 'new'
    end
  end

private

  def product_params
    params.require(:product).permit(:title, :description, :brand)
  end

end
