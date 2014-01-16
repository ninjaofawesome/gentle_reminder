class UsersController < ApplicationController

	def index 
  	# log in page
    #   If user exists go to show page (render :show)
    #   Else
    #    continue to new (render :new)
	end 

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
<<<<<<< HEAD
      redirect_to "/users/#{@user.id}/goals/new"
       # redirect_to new_user_goal_path(@user)#goal not need because it hasn't been created yet
=======
      # redirect_to "/users/#{@user.id}/goals/new"
       redirect_to new_user_goal_path(@user)
>>>>>>> 86beb5a9af7267a989a755b2a76f6c449e2334df
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

end 