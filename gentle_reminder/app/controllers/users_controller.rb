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
      redirect_to user_goal_path
=======
      # redirect_to "/users/#{@user.id}/goals/new"
       redirect_to new_user_goal_path(@user, @goal)
>>>>>>> 79e9dbf97e49b8fae549046eff8fd0f03beacb9f
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end

end 