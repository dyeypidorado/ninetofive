class Admin::CategoriesController < Admin::BaseController
  def index
    @categories = Category.all
  end
  
  def show
    @category = Category.find(params[:id])
    redirect_to [:admin, @category, :products]
  end
end
