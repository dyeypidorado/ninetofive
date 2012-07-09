class Admin::CampaignsController < Admin::BaseController
  def index
    @campaigns  = Campaign.includes(:product)
  end

  def show
    @campaign = Campaign.find(params[:id])
  end

  def new
    @products = Product.all
    @campaign = Campaign.new
    @campaign.steps.build
  end

  def create
    redirect_to [:admin, ]
  end
end
