class Admin::SubscribersController < Admin::BaseController
  before_filter :set_madmimi, :only => [:destroy]

  def index
    if params[:product_id]
      @product = Product.find(params[:product_id])
      @subscribers = @product.subscribers.all
    else
      @subscribers = Subscriber.all
    end
  end

  def new
    @product = Product.find(params[:product_id]);
    @subscriber = @product.subscribers.new
  end

  def create
    @product = Product.find(params[:product_id])
    if @subscriber = @product.subscribers.create(params[:subscriber])
      ConfirmationMailer.send_confirmation(@product, @subscriber).deliver
      redirect_to admin_product_subscribers_path(@product.id), notice: 'Subscriber was successfully created.'
    else
      render action: "new"
    end
  end

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
