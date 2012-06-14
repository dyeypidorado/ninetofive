class SubscribersController < ApplicationController
  before_filter :set_madmimi, :only => [:confirm_subscription]

  # GET /subscribers/new
  def new
    @product = Product.find(params[:product_id]);
    @subscriber = @product.subscribers.new
  end

  # POST /subscribers
  def create
    @product = Product.find params[:product_id]
    @subscriber = @product.subscribers.new params[:subscriber]
    if @subscriber.save
      ConfirmationMailer.send_confirmation(@product, @subscriber).deliver
      flash[:notice] = 'Subscriber was successfully created. Check your email for your confirmation message.'
      redirect_to product_subscriber_path(@product.id, @subscriber.id)
    else
      render template: "products/show"
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

