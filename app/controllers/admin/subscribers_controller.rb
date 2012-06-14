class Admin::SubscribersController < ApplicationController
  before_filter :authenticate_admin!
  before_filter :set_madmimi, :only => [:destroy]

  # GET /subscribers
  def index
    @product = Product.find(params[:product_id]);
    @subscribers = @product.subscribers.all
  end

  # GET /subscribers/new
  def new
    @product = Product.find(params[:product_id]);
    @subscriber = @product.subscribers.new
  end

  # POST /subscribers
  def create
    @product = Product.find(params[:product_id])
    if @subscriber = @product.subscribers.create(params[:subscriber])
      ConfirmationMailer.send_confirmation(@product, @subscriber).deliver
      redirect_to admin_product_subscribers_path(@product.id), notice: 'Subscriber was successfully created.'
    else
      render action: "new"
    end
  end

  # DELETE /subscribers/1
  def destroy
    @product = Product.find(params[:product_id]);
    @subscriber = @product.subscribers.find(params[:id])
    @subscriber.destroy
    if @subscriber.is_subscribed?(@product)
      @mimi.remove_from_list(@subscriber.email, @product.listname)
    end
    redirect_to admin_product_subscribers_path(@product.id)
  end
end
