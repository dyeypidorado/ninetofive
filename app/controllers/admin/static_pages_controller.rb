class Admin::StaticPagesController < Admin::BaseController
  before_filter :find_page, only: [:show, :update]
  layout :resolve_layout

  def resolve_layout
    action_name == 'show' ? 'application' : 'admin'
  end

  def index
    @static_pages = StaticPage.all
  end

  def show
    if @static_page.name == 'Homepage'
      @subscriber = Subscriber.new
      @product = Product.first
      render template: "static_pages/homepage" and return
    end
    render template: "static_pages/show"
  end

  def new
    @static_page = StaticPage.create
    redirect_to [:admin, @static_page]
  end

  def update
    @static_page.region1 = params[:content][:region_one][:value]
    @static_page.region2 = params[:content][:region_two][:value]
    @static_page.region3 = params[:content][:region_three][:value]
    @static_page.region4 = params[:content][:region_four][:value]
    @static_page.region5 = params[:content][:region_five][:value]

    @static_page.save!
    render :text => ""
  end

  def destroy
    @static_page = StaticPage.find(params[:id])
    @static_page.destroy

    redirect_to admin_static_pages_path
  end

  protected
  def find_page
    @static_page = StaticPage.find params[:id]
  end
end

