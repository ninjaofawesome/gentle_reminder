class SessionsController < ApplicationController

	def new 

	end 

	def create 
		#raise env["omniauth.auth"].to_yaml
		user = user.from_omniauth(env["omniauth.auth"]);
		if user
			session[:user_id] = user.user_id
			redirect_to root_url, notice: 'sign_in'
		else
			user = User.find_by_email(params[:session][:email].downcase)
			if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user_goals_path(user)
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
