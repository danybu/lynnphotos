# Preview all emails at http://localhost:3000/rails/mailers/lynn_mailer
class LynnMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/lynn_mailer/order
  def order
    LynnMailer.order("from@from.from", "frommeke" , [1,3], "this is some extra text by the user!")
  end

end
