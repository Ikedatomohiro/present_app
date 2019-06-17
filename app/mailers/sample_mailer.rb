class SampleMailer < ApplicationMailer
  def welcome(user)
    @user = user
    mail to: '', subject: 'Sample mailer'
  end
end
