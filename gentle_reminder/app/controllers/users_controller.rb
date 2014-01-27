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
       flash[:success] = "Hooray!  Welcome to a new you!"
       redirect_to user_path(@user)
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
  end
 
  


end 