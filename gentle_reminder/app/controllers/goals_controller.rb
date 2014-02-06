Dir['./model/*.rb'].each {|file| require file}

class GoalsController < ApplicationController

  def index
    user = User.find(params[:user_id])
    goals = user.goals 
    github = Github.new(user)
    @goals_array = []

    goals.each do |goal|
      repo = goal.remove_whitespace
      commits = github.commits(repo, "master", goal.created_at)
      if commits.class == TrueClass
        goal.destroy
        redirect_to user_goals_path(user)
        flash[:error]= "Invalid repo, please try again."
      else
        date = goal.format_date(goal.timeframe)
        user_commits = github.count_commits(repo, "master", goal.created_at)
        weekly_commits = github.track_weekly_commits(repo, "master")
        @goals_array << {:date => date, :commits => user_commits, :goal_key => goal}
      end
    end

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
    user = User.find(params[:user_id])
    goal = user.goals.build(:goal_type_id => params[:goal_type][:id], :charity_id => params[:charity][:id], :monetary_amount => params[:monetary_amount], :timeframe => future_date, :commitments => params[:commitments], :meetups => params[:meetups], :repo => params[:repo]) 
    if goal.save
      redirect_to user_goals_path(user)
    else
      render "new"
    end 
  end 

  # def show
  #   @goal = Goal.find(params[:id])
  #   scraper = Scraper.new('http://www.codecademy.com/gustavo_guimaraes')
  #   @user_courses = scraper.get_title
  # end

end 

