class RenameColumnForGoalTable < ActiveRecord::Migration
  def change
    rename_column :goals, :programming_language, :goal_type
  end
end
