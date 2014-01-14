class Goal < ActiveRecord::Base
	has_one :charity
	has_many :tools
	belongs_to :user
end