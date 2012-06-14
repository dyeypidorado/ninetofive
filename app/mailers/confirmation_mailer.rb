class ConfirmationMailer < ActionMailer::Base
  default from: "no-reply@9to5mil.com"

  def send_confirmation(product,subscriber)
    @subscriber = subscriber
    @product = product
    mail(:to => subscriber.email, :subject => "Confirmation Message")
  end
end

