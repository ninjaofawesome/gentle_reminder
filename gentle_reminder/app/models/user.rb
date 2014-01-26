class User < ActiveRecord::Base
  attr_accessible :name, :email, :password, :password_confirmation
	has_many :goals
	has_many :goal_types, through: :goals

	def self.from_omniauth(auth)
		where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
	end

	def self.create_from_omniauth(auth)
		create! do |user|
			user.provider = auth["provider"]
			user.uid = auth["uid"]
			user.nickname = auth["info"]["nickname"]
		end
	end


	# has_secure_password

	# validates :name, :presence => true, :length => {:minimum => 2, :maximum => 100}
	# VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	# validates :email, :presence => true,
	# 					:length => {:minimum => 5, :maximum => 100},
	# 					:format => {:with => VALID_EMAIL_REGEX, :message => "Email incorrect!  Try again."},
	# 					:uniqueness => {:case_sensitive => false}
	
	# validates :password, :length => {:minimum => 6, :message => "Password must be minimum 6 letters and include a number and one uppercase letter"}

	# before_save {|user| user.email = email.downcase}
	# before_save :create_remember_token

	# private 

	# def create_remember_token
	# 	self.remember_token = SecureRandom.urlsafe_base64
	# end 
end