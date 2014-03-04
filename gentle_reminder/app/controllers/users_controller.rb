class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
       flash[:success] = "Hooray!  Welcome to a new you!"

       UserMailer.welcome_email(@user).deliver
       redirect_to user_path(@user)
      60f8883b1c2f5469257d8a450fb66ef15cf50b44
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
      sign_in @user
      redirect_to user_goals_path(@user)
    else
      render "show"
    end
  end
end 
