class Admin::SubscribersController < Admin::BaseController
  before_filter :set_madmimi
  respond_to :html, :json

  def index
    if params[:product_id]
      @product = Product.find(params[:product_id])
      @subs = @product.lists.includes(:subscriber, :step)
    else
      @subs = List.includes(:subscriber, :step)
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

  def export
    emails = params[:import_email]
    list   = params[:madmimi_list]
    ids    = []

    unless emails.blank? || list.blank?
      for email in emails
        ids << spawn_block do
          @mimi.add_to_list(email, list);
        end
      end
    end
    render text: "ok" if wait(ids)
  end

  def mimi_lists
    @lists = @mimi.lists
    respond_with @lists
  end
end

