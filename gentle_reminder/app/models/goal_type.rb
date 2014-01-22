class GoalType < ActiveRecord::Base
  has_many_and_belongs_to :tools
end