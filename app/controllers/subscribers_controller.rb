class SubscribersController < ApplicationController
  before_filter :set_madmimi, :only => [:confirm_subscription]

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
      redirect_to admin_product_subscriber_path(@product.id, @subscriber.id), notice: 'Subscriber was successfully created. Check your email for your confirmation message.'
    else
      render action: "new"
    end
  end

  #Confirm subscription to product
  def confirm_subscription
    @product = Product.find(params[:product_id]);
    @subscriber = @product.subscribers.find(params[:id])
    @mimi.add_to_list(@subscriber.email, @product.listname)
    render :text => "Ok"
  end
end

