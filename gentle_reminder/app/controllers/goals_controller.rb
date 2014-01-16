class GoalsController < ApplicationController

  def index 
    # log in page
  #   If user exists go to show page (render :show)
  #   Else
  #    continue to new (render :new)
  end 

  def new
    @goal = Goal.new
  end

  def create
    @user = Goal.new(params[:goal])
    if @goal.save
      redirect_to @user
    else
      render "new"
    end
  end

  def show
    @goal = User.find(params[:id]).goal
  end

end 