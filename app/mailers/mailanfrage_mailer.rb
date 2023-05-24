class MailanfrageMailer < ApplicationMailer
  def new_anfrage(anfrage)
    @anfrage = anfrage
    mail(
      subject: "Neue Anfrage "
    )
  end
end
