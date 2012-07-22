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
    @list = @product.lists.create
    @subscriber = Subscriber.create params[:subscriber]
    @affiliate = Affiliate.find params[:affiliate][:id] if params[:affiliate][:id].present?
    @campaign = Campaign.find_by_trigger_code params[:campaign][:trigger_code] if params[:campaign][:trigger_code].present?

    if @subscriber.save
      @list.subscriber = @subscriber

      if @affiliate
        @list.affiliate = @affiliate if @affiliate
      end

      if params[:fb].present?
        @list.is_fb = true
      end

      if @campaign
        @list.step = @campaign.steps.first
      end

      @list.save

      ConfirmationMailer.send_confirmation(@list, @subscriber).deliver
      flash[:notice]  = "Thanks for signing up! We sent a confirmation mail. Please check your mailbox."
      # redirect_to step_product_subscriber_path(@product.id, @subscriber.id)
      redirect_to root_path
    else
      render template: "products/show"
    end
  end

  # Confirm subscription to page
  def confirm_subscription
    list = List.includes(:subscriber, :step).find_by_confirmation_code params[:confirmation_code]
    @step = list.step

    if !@subscriber.nil?
      flash[:success] = "Thanks! We'll send you updates/special offers related to #{@product} as soon as we have them. :)"

      if list.is_fb
        @mimi = Mimi::set_madmimi
        @mimi.add_to_list(@subscriber.email, "Facebook")
        flash[:success] = "Thanks! We've just sent an exclusive offer for Facebook subscribers. :)"
      end

      if !@step.nil?
        @step.send_promotion
      end
    end
    redirect_to root_path
  end
end

