class NotificationMailer < ActionMailer::Base
  default from: "to.tomo.tomohiro2@gmail.com"

  def send_confirm_to_user(user)
    @user = user
    @users_present = Present.where(user_id: 1)
    @latest_present = @users_present.last
    mail(
      subject: "ご購入ありがとうございました。",
      to: @user.email
    ) do |format|
      format.html
    end
  end
end