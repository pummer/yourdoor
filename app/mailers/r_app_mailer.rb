class RAppMailer < ActionMailer::Base
  default :from => "rentyourdoor@gmail.com"
  
  def r_app_complete_email(listing_broker)
    @user = listing_broker
    @url  = "http://beta.rentyourdoor.com/login"
    mail(:to => user.email, :subject => "Welcome to My Awesome Site")
  end
end