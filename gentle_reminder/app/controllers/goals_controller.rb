
# require 'debugger'
class GoalsController < ApplicationController

  # def index 
  #   # log in page
  # #   If user exists go to show page (render :show)
  # #   Else
  # #    continue to new (render :new)
  # end 

  def new
    # need to work on this view
    @user = User.find(params[:user_id])
    @goal = Goal.new
    @tools = Tool.all
    @charities = Charity.all
    @programming_languages = ProgrammingLanguage.all
  end

  def create
    # debugger
    user = User.find(params[:user_id])
    goal = user.goals.build(:programming_language_id => params[:programming_language][:id])
    
    if goal.save
      # debugger
      redirect_to user_goal_path(user, goal)
    else
      render "new"
    end
  end

  def show
    @goal = Goal.find(params[:id])
  end

end 
>>>>>>> 6dc27eb71b3878a2e472e8b726c73a12d1ad0d96
