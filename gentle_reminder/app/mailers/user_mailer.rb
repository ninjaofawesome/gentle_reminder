class UserMailer < ActionMailer::Base
  default from: "felicia.ogarro@flatironschool.com" 

# method added to send an email to registered emails
  def welcome_email(user) 
  	@user = user
  	mail(:to => @user.email, :subject =>'Welcome to Gentle Reminder')
  end 

  # def commit_updates(user)


  # end 
end
