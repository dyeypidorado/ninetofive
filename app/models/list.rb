class List < ActiveRecord::Base
  attr_accessible :status_code, :confirmation_code
  attr_accessible :is_fb

  belongs_to :product
  belongs_to :subscriber
  belongs_to :affiliate
  belongs_to :step

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

  def set_subscribed
    self.status_code = StatusCode::Subscribed
    self.save
  end

  def generate_confirmation_code
    self.confirmation_code = rand(36**12).to_s(36)
  end

  def send_promotion
    mimi = Mimi::set_madmimi

    step = self.step
    link = "localhost:3000/page/#{step.page.link_code}?l=#{self.confirmation_code}"

    options = { 'promotion_name' => step.promotion_name, 'recipients' => self.subscriber.email, 'from' => 'no-reply@9to5mil.com', 'subject' => 'Test'  }
    yaml_body = { 'url' => link }
    mimi.send_mail(options, yaml_body)
  end

  def set_current_step
    step = self.step
    if !step.next_step.nil?
      self.step = step.next_step
      self.save

      self.send_promotion
    else
      self.step = nil
      #sales page
    end
  end
end

