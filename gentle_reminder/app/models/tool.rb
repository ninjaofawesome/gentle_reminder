class Tool < ActiveRecord::Base
  has_many :goal_tools
  has_many :goal_types, through: :goal_tools
end