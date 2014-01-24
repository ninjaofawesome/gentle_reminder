Dir['./model/*.rb'].each {|file| require file}

class GoalsController < ApplicationController

  # def index 
  #   # log in page
  # #   If user exists go to show page (render :show)
  # #   Else
  # #    continue to new (render :new)
  # end 

  def index
    user = User.find(params[:user_id])
    @goals = user.goal_types
  end

  def new
    @user = User.find(params[:user_id])
    @goal = Goal.new
    @goal_types = GoalType.all
    @tools = Tool.all
    @charities = Charity.all
  end 


  def create
    #debugger
    user = User.find(params[:user_id])
    goal = user.goals.build(:goal_type_id => params[:goal_type][:id])
    if goal.save
      redirect_to user_path(user)
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

