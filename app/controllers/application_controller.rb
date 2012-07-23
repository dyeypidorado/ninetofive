require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery
  before_filter :save_referrer
  before_filter :get_source
  before_filter :get_pages

  def set_madmimi
    @mimi = Mimi::set_madmimi
  end

  def save_referrer
    code = params[:referrer] || params[:a]
    if code
      Referral.create(code: code, link: request.url)
      @affiliate = Affiliate.find_by_code code
    end
    @fb = params[:fb]
  end

  def get_source
    @source = Subscriber.find_by_email params[:source] if params[:source]
  end

  def get_pages
    # @book = Category.find_by_name("Books")
    # @merchandise = Category.find_by_name("Merchandise")
    # @seminars = Category.find_by_name("Seminars")
    @news         = StaticPage.find_or_create_by_name("News")
    @contact      = StaticPage.find_or_create_by_name("Contact")
    @book         = StaticPage.find_or_create_by_name("Books")
    @merchandise  = StaticPage.find_or_create_by_name("Merchandise")
    @seminars     = StaticPage.find_or_create_by_name("Seminars")
  end
end

