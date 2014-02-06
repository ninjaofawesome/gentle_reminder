class UserMailer < ActionMailer::Base
  default from: "from@example.com" 

# method added to send an email to registered emails
  def welcome_email(user) 
  	@user = user
  	@url = "http://example.com/login"
  	mail(to:@user.email, subject: 'Welcome to Gentle Reminder')
  end 

  def commit_updates(user)


  end 
end
