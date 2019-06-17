class NotificationMailer < ActionMailer::Base
  default from: "to.tomo.tomohiro2@gmail.com"

  def send_confirm_to_user(user)
    @user = user
    a = user.id
    @users_present = Present.where(user_id: a)
    @latest_present = @users_present.last
    b = @latest_present.id
    @latest_products = PresentProduct.where(present_id: b)
    price = 0
      @latest_products.each do |present|
        product = Product.find(present.product_id)
        price += product.price
      end
    @total_price = price

    mail(
      subject: "ご購入ありがとうございました。",
      to: user.email
    ) do |format|
      format.html
      end
  end
end