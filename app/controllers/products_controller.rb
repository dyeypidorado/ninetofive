class ProductsController < ApplicationController
  def index
    @category = Category.find params[:category_id]
    @products = @category.products
  end

  def show
    @product = Product.first unless params[:id]
    @product = Product.find(params[:id]) if params[:id]
    @page = @product.squeeze_page
    @subscriber = @page.subscribers.build
  end
end

