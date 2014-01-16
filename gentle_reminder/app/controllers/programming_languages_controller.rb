class ProgrammingLanguagesController < ApplicationController
	
	def new 
		@goal = Goal.find(params[:goal_id])
		@programming_language = ProgrammingLanguage.new
	end 

	def create
		@goal = Goal.find(params[:goal_id])
		@programming_language = @goal.programming_languages.build(:name => params[:programming_language][:name])
			if programming_language.save
				redirect_to new_tool_path(@programming_language)
			else
				render "new"
			end 
		end 
end
