class GoalTool < ActiveRecord::Base
	belongs_to :tool
	belongs_to :goal_type
end 