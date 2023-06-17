class NotifierMailer < ApplicationMailer
  def alert_request(request)
    @request = request
    mail(to: ENV['MAILER_USER'], subject: "Neue Wohnungsanfrage")
  end
end
