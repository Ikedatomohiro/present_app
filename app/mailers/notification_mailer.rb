class NotificationMailer < ActionMailer::Base
  default from: "to.tomo.tomohiro2@gmail.com"

  def send_confirm_to_user(user)
    @user = user
    mail(
      subject: "ご購入ありがとうございました。",
      to: @user.email
    ) do |format|
      format.text
    end
  end
end