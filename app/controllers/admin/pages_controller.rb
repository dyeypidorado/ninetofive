class Admin::PagesController < Admin::BaseController
  def index
    @product = Product.find(params[:product_id])
    @pages = @product.pages
  end

  def show
    @product = Product.find(params[:product_id])
    @page = @product.pages.find(params[:id])
  end

  def new
    @product = Product.find(params[:product_id])
    @page = @product.pages.create :title => "Your Product Page Title", :content => "Insert content here."
    @status = Status.create value: "#{@product.name}_Squeeze_Page#{@product.pages.count}"
    @status.page_id = @page.id
    @status.save!
    redirect_to [:admin, @product, @page]
  end

  def update
    @product = Product.find(params[:product_id])
    @page = @product.pages.find(params[:id])
    @page.title = params[:content][:page_title][:value]
    @page.content = params[:content][:page_content][:value]
    @page.save!
    render :text => ""
  end
end
