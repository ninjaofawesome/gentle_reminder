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
       # UserMailer.welcome_email(@user).deliver
       redirect_to user_path(@user)
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.github_name = params[:user][:github_name]
    # debugger
    if @user.save
      redirect_to signin_path
    else
      render "show"
    end
  end
 
  


end 