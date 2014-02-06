class UserMailer < ActionMailer::Base
  default from: "chris.haack@me.com" 

# method added to send an email to registered emails
  def welcome_email(user) 
  	@user = user
  	@url = "http://127.0.0.1:3000"
  	mail(to:@user.email, subject: 'Hey Girl!!! Welcome to Gentle Reminder')
  end 

  def commit_updates(user)


  end 
end
