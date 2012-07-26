require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery
  before_filter :save_referrer
  before_filter :get_source
  before_filter :get_pages
  before_filter :get_list
  before_filter :get_campaign
  before_filter :get_settings

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

  def get_campaign
    @campaign = Campaign.find_by_trigger_code params[:c] if params[:c]
  end

  def get_list
    @list = List.includes(:step).find_by_confirmation_code params[:l] if params[:l]
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

  def get_settings
    Setting.youtube_link  ||= ""
    Setting.email         ||= ""
    Setting.fb_link       ||= ""
    @yt    = Setting.youtube_link
    @fb    = Setting.fb_link
    @email = "mailto:#{Setting.email}"
  end
end

