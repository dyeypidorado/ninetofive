class Admin::ProductsController < ApplicationController
  before_filter :authenticate_admin!
  before_filter :set_madmimi, :only => [:create]

  # GET /products
  def index
    @products = Product.all
  end

  # GET /products/1
  def show
    @product = Product.find(params[:id])
    redirect_to admin_product_subscribers_path(@product.id)
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  def create
    @product = Product.new(params[:product])
    if @product.save
      @mimi.new_list( @product.listname )
      redirect_to [:admin, @product], notice: 'Product was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /products/1
  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(params[:product])
      redirect_to [:admin, @product], notice: 'Product was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /products/1
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to admin_products_path
  end

  #SET mad mimi
  def set_madmimi
    @mimi = MadMimi.new('rystraum@gmail.com', 'd14980145460d10a304b52bfc973c1f3')
  end
end
