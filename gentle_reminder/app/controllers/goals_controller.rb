class GoalsController < ApplicationController

	def new
		@goal = Goal.new
	end

	def create
		@goal = Goal.new(params[:goal])
		if @goal.save?
			redirect_to @charity
		else
			render "new"
		end
	end

	def edit

	end

	def show

	end

	def destroy

	end

end