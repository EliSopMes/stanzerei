class NotifierMailer < ApplicationMailer
  def alert_request
    @request = Request.last
    mail(to: "blabliblub@shi.com", subject: "ALERT")
  end
end
