class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save

       flash[:success] = "Hooray!  Welcome to a new you!"
       # UserMailer.welcome_email(@user).deliver
       # 4a13165db65a8669a1966eb90ad8df3792a68573
       # redirect_to user_path(@user)
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
    if @user.save
      redirect_to signin_path
    else
      render "show"
    end
  end
end 
