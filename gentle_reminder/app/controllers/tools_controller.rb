class ToolsController < ApplicationController
	def new
		@tool = Tool.new
	end 

	def create 
		@goal = Goal.find(params[:goal_id])
		@tool = @goal.tools.build(:tool_description => params[:tool][:tool_description])
			if tool.save
				redirect_to new_charity_path(@tool)
			else
				render "new"
			end
	end 
end
