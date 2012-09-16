# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
RailsApp::Application.initialize!

WickedPdf.config = {
  :exe_path => 'C:/Program Files (x86)/wkhtmltopdf/wkhtmltopdf.exe' 
}  
