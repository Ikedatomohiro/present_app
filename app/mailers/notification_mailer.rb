class NotificationMailer < ActionMailer::Base
  default from: "to.tomo.tomohiro2@gmail.com"

  def send_confirm_to_user(user)
    @user = user
    @users_present = Present.where(user_id: user.id)
    @latest_present = @users_present.last
    @latest_products = PresentProduct.where(present_id: @latest_present.id)
    price = 0
      @latest_products.each do |present|
        product = Product.find(present.product_id)
        price += product.price
      end
    @total_price = price


    @authenticity_token = Present.find_by(id: @latest_present.id).authenticity_token
    mail(
      subject: "ご購入ありがとうございました。",
      to: user.email
    ) do |format|
      format.html
      end
  end
end