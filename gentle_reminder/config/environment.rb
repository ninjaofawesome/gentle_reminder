# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
GentleReminder::Application.initialize!

GentleReminder::Application.configure do 
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = { 
    address: "smtp.gmail.com",
    port: 587, 
    authentication: "plain",
    user_name: "felicia.ogarro@gmail.com", 
    password: "xavgbcjlnzfjoamn", 
    enable_starttls_auto: true
  }
end