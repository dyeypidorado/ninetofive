class Admin::PagesController < ApplicationController
  def index
    @product = Product.find(params[:product_id])
    @pages = @product.pages
  end

  def show
    @product = Product.find(params[:product_id])
    @page = @product.pages.find(params[:id])
  end
end
