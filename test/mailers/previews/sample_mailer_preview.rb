# Preview all emails at http://localhost:3000/rails/mailers/sample_mailer
class SampleMailerPreview < ActionMailer::Preview
  def welcome
    user = User.new(name: '菅田', email: 'suda@example.com')
    SampleMailer.welcome(user)
  end
end
