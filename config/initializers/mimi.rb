module Mimi
  def self.set_madmimi
    if Rails.env.production?
      mimi = MadMimi.new('9to5millionaire@gmail.com', '5c858195ba976c7bb52aacc3ab8b48aa')
    else
      mimi = MadMimi.new('rystraum@gmail.com', 'd14980145460d10a304b52bfc973c1f3')
    end

    mimi
  end
end
