class ApplicationMailer < ActionMailer::Base
  default to: (Rails.env.production? ? 'montanick@gmail.com' : 'damien@itsdamo.com')

  def contact_form(message)
    @message = message.content
    mail(from: message.from, subject: message.subject)
  end
end
