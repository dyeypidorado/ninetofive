class SubscribersController < ApplicationController
  # GET /subscribers
  def index
    @product = Product.find(params[:product_id]);
    @subscribers = @product.subscribers.all
  end

  # GET /subscribers/1
  def show
    @product = Product.find(params[:product_id]);
    @subscriber = @product.subscribers.find(params[:id])
  end

  # GET /subscribers/new
  def new
    @product = Product.find(params[:product_id]);
    @subscriber = @product.subscribers.new
  end

  # GET /subscribers/1/edit
  def edit
    @product = Product.find(params[:product_id]);
    @subscriber = @product.subscribers.find(params[:id])
  end

  # POST /subscribers
  def create
    @product = Product.find(params[:product_id])
    if @subscriber = @product.subscribers.create(params[:subscriber])
      ConfirmationMailer.send_confirmation(@product, @subscriber).deliver
      redirect_to product_subscriber_path(@product.id, @subscriber.id), notice: 'Subscriber was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /subscribers/1
  def update
    @product = Product.find(params[:product_id]);
    @subscriber = @product.subscribers.find(params[:id])

    if @subscriber.update_attributes(params[:subscriber])
      redirect_to @subscriber, notice: 'Subscriber was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /subscribers/1
  def destroy
    @product = Product.find(params[:product_id]);
    @subscriber = @product.subscribers.find(params[:id])
    @subscriber.destroy

    redirect_to product_subscribers_path(@product.id)
  end
end
