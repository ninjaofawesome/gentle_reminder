class GoalType < ActiveRecord::Base
  has_many :goal_tools
  has_many :goals
  has_many :tools, through: :goal_tools
  has_many :users, through: :goals
end