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
    @goals = user.goals  
  end

  def new
    @user = User.find(params[:user_id])
    @goal = Goal.new
    @goal_types = GoalType.all
    @tools = Tool.all
    @charities = Charity.all
    # @money = Goal.find(params[:user_id])
  end 


  def create
    future_date = Date.today + params[:timeframe].to_i.days
    test = future_date.strftime("%d%m%Y")
    user = User.find(params[:user_id])
    goal = user.goals.build(:goal_type_id => params[:goal_type][:id], :charity_id => params[:charity][:id], :monetary_amount => params[:monetary_amount], :timeframe => future_date, :commitments => params[:commitments], :meetups => params[:meetups])
    
    if goal.save
      redirect_to user_goals_path(user)
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

