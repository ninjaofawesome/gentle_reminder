class Goal < ActiveRecord::Base
	belongs_to :charity
	belongs_to :tool
	belongs_to :user
  belongs_to :goal_type #new
end