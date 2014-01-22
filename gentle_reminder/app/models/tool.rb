class Tool < ActiveRecord::Base
  has_many_and_belongs_to :goal_types
end