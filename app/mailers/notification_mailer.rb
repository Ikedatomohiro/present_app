class NotificationMailer < ActionMailer::Base
  default from: "to.tomo.tomohiro2@gmail.com"

  def send_confirm_to_user(user)
    @user = user
    mail(
      subject: "カートへの商品登録が完了しました。",
      to: @user.email
    ) do |format|
      format.text
    end
  end
end