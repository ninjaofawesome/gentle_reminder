class GoalType < ActiveRecord::Base
  has_many :goal_tools
  has_many :goals #new
  has_many :tools, through: :goal_tools
end