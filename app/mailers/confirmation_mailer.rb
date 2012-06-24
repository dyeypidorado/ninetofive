class ConfirmationMailer < ActionMailer::Base
  default from: "no-reply@9to5mil.com"

  def send_confirmation(page, subscriber)
    @subscriber = subscriber
    @code = subscriber.lists.find_by_page_id(page.id).confirmation_code
    mail(:to => subscriber.email, :subject => "Confirmation Message")
  end
end

