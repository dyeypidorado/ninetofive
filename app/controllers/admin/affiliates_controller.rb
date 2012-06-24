class Admin::AffiliatesController < Admin::BaseController
  before_filter :get_affiliate, only: [:show, :edit, :update, :destroy]
  def index
    @affiliates = Affiliate.all
  end

  def show
    @lists = @affiliate.lists.includes(:subscriber, :page)
  end

  def new
    @affiliate = Affiliate.new
  end

  def create
    @affiliate = Affiliate.create params[:affiliate]
    respond_with :admin, @affiliate, location: admin_affiliates_path
  end

  def edit
  end

  def update
    @affiliate.update_attributes params[:affiliate]
    respond_with :admin, @affiliate, location: admin_affiliates_path
  end

  def destroy
  end

  protected
  def get_affiliate
    @affiliate = Affiliate.find params[:id]
  end
end

