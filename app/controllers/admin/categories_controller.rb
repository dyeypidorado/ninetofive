class Admin::CategoriesController < Admin::BaseController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.includes(:products).find(params[:id])
  end
end
