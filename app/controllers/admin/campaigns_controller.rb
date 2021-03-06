class Admin::CampaignsController < Admin::BaseController
  def index
    @campaigns  = Campaign.includes(:product)
  end

  def show
    @campaign = Campaign.find(params[:id])
    @sales_page = @campaign.product.page
    @steps = @campaign.steps.includes(:page)
  end

  def edit
    @products = Product.all
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

  def update
    @campaign = Campaign.find(params[:id])
    @campaign.update_attributes(params[:campaign])
    redirect_to [:admin, :campaigns]
  end

  def destroy
    @campaign = Campaign.find(params[:id])
    @campaign.destroy
    redirect_to [:admin, :campaigns]
  end
end
