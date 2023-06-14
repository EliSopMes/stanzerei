class NotifierMailer < ApplicationMailer
  def alert_request(request)
    @request = request
    mail(to: "elisabethopinc@gmail.com", subject: "Neue Wohnungsanfrage")
  end
end
