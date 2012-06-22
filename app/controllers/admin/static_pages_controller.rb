class Admin::StaticPagesController < Admin::BaseController
  before_filter :authenticate_admin!
  def index
    @static_pages = StaticPage.all
  end

  def show
    @static_page = StaticPage.find(params[:id])
  end

  def new
    @static_page = StaticPage.new
  end

  def edit
    @static_page = StaticPage.find(params[:id])
  end

  def create
    @static_page = StaticPage.new(params[:static_page])
    if @static_page.save
      redirect_to @static_page, notice: 'Static page was successfully created.'
    else
      render action: "new"
    end
  end

  def update
    @static_page = StaticPage.find(params[:id])

    if @static_page.update_attributes(params[:static_page])
      redirect_to @static_page, notice: 'Static page was successfully updated.'
    else
      render action: "edit"
    end
  end

  def destroy
    @static_page = StaticPage.find(params[:id])
    @static_page.destroy

    redirect_to static_pages_url
  end
end
