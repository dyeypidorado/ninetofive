class PagesController < ApplicationController
  def show
    @page = fetch_page
    redirect_to root_path, alert: "Page not found" and return if @page.nil?
    @product = @page.product

    if @source
      @subscriber = Subscriber.find_by_email(@source)
    end

    if @list
      if @list.step.page == @page
        @list.set_current_step
      end
    end
  end

  protected
  def fetch_page
    Page.find_by_link_code(params[:page_id]) || Page.find_by_link_code(params[:id])
  end
end

