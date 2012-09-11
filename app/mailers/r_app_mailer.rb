class RAppMailer < ActionMailer::Base
  default from: "applications@rentyourdoor.com"
  
  def application_email(r_app)
    @r_app = r_app
    attachments["Application_"+@r_app.id.to_s+'.pdf'] = File.read(Rails.root.join('pdfs',"Application_"+@r_app.id.to_s+'.pdf'))
    mail(:to => @r_app.listing_broker.email, :subject => "Rental Application")
    
  end
end
