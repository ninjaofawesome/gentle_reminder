class SessionsController < ApplicationController
require 'debugger'
	def new 

	end 

	def create 
		#raise env["omniauth.auth"].to_yaml
		user = User.from_omniauth(env["omniauth.auth"])
		if user
			session[:user_id] = user.id
			redirect_to root_url, notice: "Signed in!"
		else
		user = User.find_by_email(params[:session][:email].downcase)
			if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user
			else
				flash[:error]= "Invalid email or password"
				render 'new'
			end
		end
	end 

	def destroy
		sign_out
		redirect_to root_url

	end 
end
