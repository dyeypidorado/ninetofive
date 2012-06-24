class PagesController < ApplicationController
  def show
    @page = Page.find_by_link_code(params[:page_id]) or Page.find_by_link_code(params[:id])
    @product = @page.product

    if @source
      @subscriber = Subscriber.find_by_email(@source)
    end
  end
end

