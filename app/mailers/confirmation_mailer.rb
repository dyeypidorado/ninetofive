class ConfirmationMailer < ActionMailer::Base
  default from: "no-reply@9to5mil.com"

  def send_confirmation(list, subscriber)
    @subscriber = subscriber
    @code = list.confirmation_code
    mail(:to => subscriber.email, :subject => "Confirmation Message")
  end
end
