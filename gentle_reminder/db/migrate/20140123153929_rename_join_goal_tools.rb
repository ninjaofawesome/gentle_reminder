class RenameJoinGoalTools < ActiveRecord::Migration
  def change 
  	rename_table :join_goal_tools, :goal_tools
  end
end
