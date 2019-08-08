class LynnMailer < ApplicationMailer

$lynnMail = "dany.buts@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.lynn_mailer.order.subject
  #
  def order(from_mail, to_mail, subject, from_name, picture_ids, extra_text)
    @greeting = "Hi Lynn,"
    @from_name = from_name
    @pictures = picture_ids.map {|id| LynnPhoto.find_by(id:id)}
    @extra_txext = extra_text
    puts "let us mail"
    mail(to: $lynnMail, subject: subject, from: from_mail)
  end
end
