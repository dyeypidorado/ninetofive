class ConfirmationMailer < ActionMailer::Base
  default from: "dorado.johnphilip@gmail.com"
  
  def send_confirmation(product,subscriber)
    @subscriber = subscriber
    @product = product
    mail(:to => subscriber.email, :subject => "Confirmation Message")
  end
end
