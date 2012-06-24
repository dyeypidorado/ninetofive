class Admin::ProductsController < Admin::BaseController
  before_filter :set_madmimi, :only => [:create]
  before_filter :get_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
    respond_with :admin, @products
  end

  def new
    @product = Product.new
    respond_with :admin, @product
  end

  def create
    @product = Product.create params[:product]
    respond_with :admin, @product
  end

  def show
    @pages = @product.pages
    respond_with :admin, @product
  end

  def edit
    respond_with :admin, @product
  end

  def update
    @product.update_attributes params[:product]
    respond_with :admin, @product
  end

  def destroy
    @product.destroy

    respond_with :admin, @product
  end

  protected
  def get_product
    @product = Product.find params[:id]
  end

end

