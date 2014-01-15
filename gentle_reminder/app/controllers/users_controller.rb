class UsersController < ApplicationController

	def index 
		users = User.all
  	# you = User.find(params[:id])
	end 
end 