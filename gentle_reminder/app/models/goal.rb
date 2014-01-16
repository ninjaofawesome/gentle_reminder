class Goal < ActiveRecord::Base
	has_one :charity
	has_one :programming_language
	belongs_to :user
end