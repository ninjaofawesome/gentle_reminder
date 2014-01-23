Dir['./model/*.rb'].each {|file| require file}

class GoalTypesController < ApplicationController
        
  def new 
	  # @goal = GoalType.find(params[:goal_type_id])
	  @goal_type = GoalType.new
  end 

  def create
	  @goal_type = GoalType.find(params[:goal_type_id])
	  # @goal_type = @goal.goal_type.build(:name => params[:goal_type][:name])
    if goal_type.save
      redirect_to user_path(@goal_type)
    else
      render "new"
    end 
	end 
end
