class SessionsController < ApplicationController

	def new 

	end 

<<<<<<< HEAD
	def create
		#pseudocode
		#if this person is signing in from omniauth do this
		#if this person is signing in from email do that
		#raise env["omniauth.auth"].to_yaml
		user = User.from_omniauth(env["omniauth.auth"]);
		if user
			sign_in user 
			session[:user_id] = user.uid
			redirect_to user_goals_path(user)
		else
			user = User.find_by_email(params[:session][:email].downcase)
			if user #&& user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user_goals_path(user)
			else
				flash[:error]= "Invalid email or password"
				render 'new'
			end
=======
	def create 
		user = User.find_by_email(params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
		sign_in user
		redirect_to user_goals_path(user)
		else
			flash[:error]= "Invalid email or password"
			render 'new'
>>>>>>> c13f59a607f2701c6d457af56d58501f06df7968
		end 
	end 

	def destroy
		sign_out
		redirect_to root_url
	end 
end
