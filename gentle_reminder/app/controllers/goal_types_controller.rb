class GoalTypesController < ApplicationController
	
	def new 
		@goal = Goal.find(params[:goal_id])
		@goal_type = ProgrammingLanguage.new
	end 

	def create
		@goal = Goal.find(params[:goal_id])
		@goal_type = @goal.goal_types.build(:name => params[:goal_type][:name])
			if goal_type.save
				redirect_to new_tool_path(@goal_type)
			else
				render "new"
			end 
		end 
end
