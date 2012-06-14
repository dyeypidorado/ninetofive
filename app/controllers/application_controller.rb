class ApplicationController < ActionController::Base
  protect_from_forgery

  def set_madmimi
    if Rails.env.production?
      @mimi = MadMimi.new('leilahernandez@9to5mil.com', 'b4696760ebc6fe479762d366a04223e1')
    else
      @mimi = MadMimi.new('rystraum@gmail.com', 'd14980145460d10a304b52bfc973c1f3')
    end
  end
end

