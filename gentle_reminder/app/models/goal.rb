class Goal < ActiveRecord::Base
	has_one :charity
	belongs_to :tool
	belongs_to :user
  belongs_to :goal_type #new
end