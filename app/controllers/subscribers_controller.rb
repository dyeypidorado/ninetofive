class SubscribersController < ApplicationController
  before_filter :set_madmimi, :only => [:confirm_subscription]

  # GET /subscribers/new
  def new
    @product = Product.find(params[:product_id])
    @subscriber = @product.subscribers.new
  end

  # POST /subscribers
  def create
    #@page = Page.find_by_id params[:page_id]
    @product = Product.find(params[:product_id])
    @list = @product.list.create
    @subscriber = @list.subscribers.build params[:subscriber]
    @affiliate = Affiliate.find params[:affiliate][:id] if params[:affiliate][:id].present?

    if @subscriber.save
      @subscriber.pages << @page

      list = @subscriber.lists.find_by_page_id @page.id
      if @affiliate
        list.affiliate = @affiliate if @affiliate
      end

      if params[:fb].present?
        list.is_fb = true
      end
      list.save

      # if @campaign, get first step of campaign, associate to list

      ConfirmationMailer.send_confirmation(@page, @subscriber).deliver
      flash[:notice]  = "Thanks for signing up! We sent a confirmation mail. Please check your mailbox."
      # redirect_to step_product_subscriber_path(@product.id, @subscriber.id)
      redirect_to root_path
    else
      render template: "products/show"
    end
  end

  # Confirm subscription to page
  def confirm_subscription
    list = List.includes(:page, :subscriber).find_by_confirmation_code params[:confirmation_code]
    page = list.page
    @subscriber = list.subscriber

    if @subscriber.subscribed_to_page page
      flash[:success] = "Thanks! We'll send you updates/special offers related to #{@product} as soon as we have them. :)"
    end

    if list.is_fb
      @mimi = Mimi::set_madmimi
      @mimi.add_to_list(@subscriber.email, "Facebook")
      flash[:success] = "Thanks! We've just sent an exclusive offer for Facebook subscribers. :)"
    end

    redirect_to root_path
  end

  def show_step
  end
end
