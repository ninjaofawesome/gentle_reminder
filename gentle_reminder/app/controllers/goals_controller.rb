Dir['./model/*.rb'].each {|file| require file}

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
    @goal_type = GoalType.new
    @tools = Tool.all
    @charities = Charity.all
  end

  def create
    # debugger
    user = User.find(params[:user_id])
    goal_type = user.goal_type.build(:goal_type_id => params[:goal_type][:id])
    
    if goal.save
      # debugger
      redirect_to user_goal_type_path(user, goal_type)
    else
      render "new"
    end
  end

  def show
    @goal = Goal.find(params[:id])
    scraper = Scraper.new('http://www.codecademy.com/gustavo_guimaraes')
    @user_courses = scraper.get_title
  end

end 

