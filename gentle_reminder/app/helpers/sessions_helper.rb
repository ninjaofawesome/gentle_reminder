module SessionsHelper
	def sign_in(user)
		cookies.permanent[:remember_token] = user.remember_token
		self.current_user = user
	end 

	def signed_in?
		#either someone is signed in via email or omniauth
		!current_user.nil?
	end 

	def current_user=(user)
		@current_user = user
	end 

	def current_user
		@current_user ||= User.find_by_remember_token(cookies[:remember_token])
	end

	def sign_out
		self.current_user = nil
		cookies.delete(:remember_token)
	end 
end

# User id: 31, name: "fdogarro", email: nil, password: nil, created_at: "2014-01-29 16:00:59", updated_at: "2014-01-29 16:00:59", password_digest: nil, remember_token: "p9m3xnrHBJCHdGdCS23Yzg", provider: "github", uid: "2686623", nickname: nil>