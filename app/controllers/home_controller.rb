class HomeController < ApplicationController
  def index
    redirect_to new_product_subscriber_path(Product.first.id)
  end
end
