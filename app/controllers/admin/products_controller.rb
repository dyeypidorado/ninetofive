class Admin::ProductsController < Admin::BaseController
  before_filter :set_madmimi, :only => [:create]
  before_filter :get_category
  before_filter :get_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = @category.products.all
    respond_with :admin, @products
  end

  def new
    @product = @category.products.new
    respond_with :admin, @product
  end

  def create
    @product = @category.products.create params[:product]
    respond_with :admin, @category, @products
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
    respond_with :admin, @category, @products
  end

  def destroy
    @product.destroy

    respond_with :admin, @category, @product
  end

  protected
  def get_category
    @category = Category.find(params[:category_id])  
  end

  def get_product
    @product = @category.products.find params[:id]
  end

end

