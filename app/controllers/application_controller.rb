class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :save_referrer
  before_filter :get_source

  def set_madmimi
    @mimi = Mimi::set_madmimi
  end

  def save_referrer
    if params[:referrer]
      Referral.create(code: params[:referrer], link: request.url)
      @referrer = params[:referrer]
    end
  end

  def get_source
    @source = params[:source] if params[:source]
  end
end
