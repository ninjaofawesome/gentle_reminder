class Goal < ActiveRecord::Base
	has_one :charity
	belongs_to :programming_language
	belongs_to :user
end