class Goal < ActiveRecord::Base
	has_one :charity
	has_many :resources
	belongs_to :user
end