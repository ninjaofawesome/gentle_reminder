class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
	has_many :goals
	has_many :goal_types, through: :goals
	has_many :charities, through: :goals
	

	def self.from_omniauth(auth)
  	where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
	end

	def self.create_from_omniauth(auth)

  	create! do |user|
	    user.provider = auth["provider"]
	    user.uid = auth["uid"]
	    user.github_token = auth.credentials.token
	    user.github_name = auth["info"]["nickname"]
  	end
	end

	private 

	def create_remember_token
		self.remember_token = SecureRandom.urlsafe_base64
	end 


end