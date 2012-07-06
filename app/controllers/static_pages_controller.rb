class StaticPagesController < ApplicationController
  before_filter :find_page, only: [:show, :homeppage]
  def homepage
    @product = Product.first unless params[:id]
    @product = Product.find(params[:id]) if params[:id]
    @page = @product.squeeze_page
    @subscriber = @page.subscribers.build
    @static_page = StaticPage.first
  end

  def show
    @static_page = StaticPage.find(params[:id])
  end

  protected
  def find_page
    @static_page = StaticPage.find params[:id]
  end
end
