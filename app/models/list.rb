class List < ActiveRecord::Base
  attr_accessible :status_code, :confirmation_code
  attr_accessible :is_fb

  belongs_to :page
  belongs_to :subscriber
  belongs_to :affiliate

  before_create :generate_confirmation_code

  def status
    case status_code
    when StatusCode::Pending
      "pending"
    when StatusCode::Subscribed
      "subscribed"
    when StatusCode::Ordered
      "ordered"
    when StatusCode::Bought
      "bought"
    else
      ""
    end
  end

  def is_subscribed?
    status_code == StatusCode::Subscribed
  end

  def is_pending?
    status_code == StatusCode::Pending
  end

  def generate_confirmation_code
    self.confirmation_code = rand(36**12).to_s(36)
  end

  def set_subscribed
    self.status_code = StatusCode::Subscribed
    self.save
  end
end
