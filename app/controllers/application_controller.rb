require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  protect_from_forgery
  before_filter :save_referrer
  before_filter :get_source

  def set_madmimi
    @mimi = Mimi::set_madmimi
  end

  def save_referrer
    code = params[:referrer] || params[:a]
    if code
      Referral.create(code: code, link: request.url)
      @affiliate = Affiliate.find_by_code code
    end
  end

  def get_source
    @source = Subscriber.find_by_email params[:source] if params[:source]
  end
end

