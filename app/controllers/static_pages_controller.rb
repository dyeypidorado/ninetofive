class StaticPagesController < ApplicationController
  before_filter :find_page, only: [:show, :homeppage]

  def homepage
    @product = Product.first unless params[:id]
    @product = Product.find(params[:id]) if params[:id]
    @subscriber = Subscriber.new
    @static_page = StaticPage.find_by_name "Homepage" || build_homepage
  end

  def show
    @static_page = StaticPage.find(params[:id])
    if @static_page.name == "Homepage"
      @subscriber = Subscriber.new
      @product = Product.first
      render template: "static_pages/homepage" and return
    end
  end

  protected
  def find_page
    @static_page = StaticPage.find params[:id]
  end

  def build_homepage
    StaticPage.create name: "Homepage", region1: '<iframe width="640" height="360" frameborder="0" allowfullscreen="" src="http://www.youtube.com/embed/uP4nRTTfXqo?autoplay=1&amp;controls=0&amp;rel=0&amp;showinfo=0"></iframe>', region2: "<span>I'm Leila Hernandez,</span>
and I was holding a full time 9 to 5 job, having had key positions in various multinational companies here and abroad, when I decided
<em>I didn't want to grow old working and retire poor.</em>
So I was a 9 to 5 Millionaire for several years, then one day, I made it.
<em>I became financially free, no more need for a 9 to 5 job.</em>"
  end
end

