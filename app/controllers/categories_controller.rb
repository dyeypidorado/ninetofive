class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    redirect_to [@category, :products]
  end
end
