class ApplicationController < ActionController::Base
  protect_from_forgery

  def set_madmimi
    @mimi = Mimi::set_madmimi
  end
end

