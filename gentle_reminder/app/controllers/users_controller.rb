class UsersController < ApplicationController
# client = Octokit::Client.new :login => 'defunkt', :password => 'c0d3b4ssssss!'
# # Fetch the current user
# client.user

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
       flash[:success] = "Hooray!  Welcome to a new you!"
       #Tells mailer to send a email after user is saved
       User.Mailer.welcome_email(@user).deliver
       redirect_to user_path(@user)
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end
 
  


end 