if Rails.env.production?
  ActionMailer::Base.delivery_method = :smtp
  ActionMailer::Base.smtp_settings = {
    address: 'smtp.gmail.com',
    domain: 'smtp.gmail.com',
    port: 587,
    user_name: 'to.tomo.tomohiro2@gmail.com',
    password: 'uczduqigrfzkkdrn',
    authentication: 'plain',
    enable_starttls_auto: true
  }
elsif Rails.env.development?
  ActionMailer::Base.delivery_method = :letter_opener
else
  ActionMailer::Base.delivery_method = :test
end