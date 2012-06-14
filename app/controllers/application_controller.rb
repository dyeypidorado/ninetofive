class ApplicationController < ActionController::Base
  protect_from_forgery

  def set_madmimi
    @mimi = MadMimi.new('rystraum@gmail.com', 'd14980145460d10a304b52bfc973c1f3')
  end
end

