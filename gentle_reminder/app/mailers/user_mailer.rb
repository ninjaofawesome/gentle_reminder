class UserMailer < ActionMailer::Base
  default from: "felicia.ogarro@flatironschool.com" 

  def welcome_email(user) 
  	@user = user
  	mail(:to => @user.email, :subject =>'Welcome to Gentle Reminder')
  	@url = "http://127.0.0.1:3000"
  	mail(to:@user.email, subject: 'Hey Girl!!! Welcome to Gentle Reminder')
  end 

end
