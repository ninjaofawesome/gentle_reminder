class Goal < ActiveRecord::Base
	has_one :charity
	belongs_to :tool
	belongs_to :user
end