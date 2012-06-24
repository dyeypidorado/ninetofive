class SubscribersController < ApplicationController
  before_filter :set_madmimi, :only => [:confirm_subscription]

  # GET /subscribers/new
  def new
    @product = Product.find(params[:product_id])
    @subscriber = @product.subscribers.new
  end

  # POST /subscribers
  def create
    @page = Page.find_by_id params[:page_id]
    @subscriber = @page.subscribers.build params[:subscriber]
    @affiliate = Affiliate.find params[:affiliate][:id]

    if @subscriber.save
      @subscriber.pages << @page

      if @affiliate
        list = @subscriber.lists.find_by_page_id @page.id
        list.affiliate = @affiliate
        list.save
      end

      ConfirmationMailer.send_confirmation(@page, @subscriber).deliver
      flash[:notice]  = "Thanks for signing up! We've sent you a confirmation email so we can check that your email do exist (and that you control your email)."
      flash[:notice] += " We hate spam as much as you do!"
      # redirect_to step_product_subscriber_path(@product.id, @subscriber.id)
      redirect_to root_path
    else
      render template: "products/show"
    end
  end

  #Confirm subscription to product
  def confirm_subscription
    @product = Product.find params[:product_id]
    @subscriber = @product.subscribers.find params[:id]
    @mimi.add_to_list(@subscriber.email, @product.listname) if @subscriber and @product
    flash[:success] = "Thanks! We'll send you updates/special offers related to #{@product} as soon as we have them. :)"
    @subscriber.update_product_list_status(@product, StatusCode::Subscribed)
    redirect_to root_path
  end

  def show_step
  end
end
