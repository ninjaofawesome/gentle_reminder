class GoalsController < ApplicationController

  # def index 
  #   # log in page
  # #   If user exists go to show page (render :show)
  # #   Else
  # #    continue to new (render :new)
  # end 

  def new
    @user = User.find(params[:user_id])
    @goal = Goal.new
  end

  def create
    @user = User.find(params[:user_id])
    @goal = @user.goals.build(:goal_type => params[:goal][:goal_type])
    if @goal.save
      redirect_to new_tool_path(@goal)
    else
      render "new"
    end
  end

  def show
    @goal = Goal.find(params[:id])
  end

end 