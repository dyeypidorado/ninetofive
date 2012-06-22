class List < ActiveRecord::Base
  attr_accessible :status_code

  belongs_to :page
  belongs_to :subscriber

  def status
    case status_code
    when StatusCode::Subscribed
      "subscribed"
    when StatusCode::Pending
      "pending"
    else
      "-"
    end
  end

  def is_subscribed?
    status_code == StatusCode::Subscribed
  end

  def is_pending?
    status_code == StatusCode::Pending
  end
end
