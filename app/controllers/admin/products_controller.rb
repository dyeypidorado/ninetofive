class Admin::ProductsController < Admin::BaseController
  before_filter :set_madmimi, :only => [:create]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
    @pages = @product.pages
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(params[:product])
    if @product.save
      redirect_to [:admin, @product], notice: 'Product was successfully created.'
    else
      render action: "new"
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to admin_products_path
  end

end
