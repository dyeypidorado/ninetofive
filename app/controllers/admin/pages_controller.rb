class Admin::PagesController < Admin::BaseController
  #before_filter :find_product
  before_filter :find_campaign, only: [:show, :update]
  before_filter :find_page, only: [:show, :update]
  layout :resolve_layout

  def resolve_layout
    action_name == 'show' ? 'application' : 'admin'
  end

  def index
    #@pages = Pages.includes
  end

  def new
    @page = @product.pages.create :title => "Your Product Page Title", :content => "Insert content here."
    #@status = Status.create value: "#{@product.name}_Squeeze_Page#{@product.pages.count}"
    #@status.page_id = @page.id
    #@status.save!
    redirect_to [:admin, @product, @page]
  end


  def show
    render template: 'pages/show'
  end

  def update
    @page.content = params[:content][:page_content][:value]
    @page.sidebar = params[:content][:sidebar][:value]
    if @page.save
      render text: ''
      #redirect_to [:admin, @page]
    end
  end

  protected
  def find_product
    @product = Product.find params[:product_id]
  end

  def find_campaign
    @campaign = Campaign.find params[:campaign_id] if params[:campaign_id]
  end

  def find_page
    @page = Page.find params[:id]
  end
end
