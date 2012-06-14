class ProductsController < ApplicationController
  def index
  end

  def show
    @product = Product.first unless params[:id]
    @product = Product.find(params[:id]) if params[:id]
    @subscriber = @product.subscribers.build
  end
end

