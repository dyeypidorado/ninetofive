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
    campaign = Campaign.create(params[:campaign])
    redirect_to [:admin, :campaigns]
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy
    redirect_to [:admin, :campaigns]
  end
end
