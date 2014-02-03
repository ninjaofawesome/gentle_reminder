class SessionsController < ApplicationController

	def new 

	end 


	def create
		#pseudocode
		#if this person is signing in from omniauth do this
		#if this person is signing in from email do that
		# raise env["omniauth.auth"].to_yaml
		# debugger
		if params[:session]
			# debugger
			user = User.find_by_email(params[:session][:email].downcase)
			# if user #&& user.authenticate(params[:session][:password])
				sign_in user
				redirect_to user_goals_path(user)
			# else
			# 	flash[:error]= "Invalid email or password"
			# 	render 'new'
			# end
		else 
			user = User.from_omniauth(env["omniauth.auth"])
			github_data = Github.new(user)
			debugger
			sign_in user 
			session[:user_id] = user.uid
			redirect_to user_goals_path(user)
		end 
	end 

	def destroy
		sign_out
		redirect_to root_url
	end 
end
