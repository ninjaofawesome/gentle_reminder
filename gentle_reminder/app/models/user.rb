class User < ActiveRecord::Base
  attr_accessible :name, :email, :password
	has_many :goals

	validates :name, :presence => true, :length => {:minimum => 2, :maximum => 100}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, :presence => true,
						:length => {:minimum => 5, :maximum => 100},
						:format => {:with => VALID_EMAIL_REGEX, :message => "Email incorrect!  Try again."},
						:uniqueness => {:case_sensitive => false}
	has_secure_password
	validates :password, :length => {:minimum => 6, :message => "Password must be minimum 6 letters and include a number and one uppercase letter"}

	#work on error message

	#todo: strengthen password!
end