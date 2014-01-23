class RenameGoalNameColumn < ActiveRecord::Migration
  def change
  	rename_column :goal_types, :goal_name, :name
  	rename_column :goals, :goal_id, :goal_type_id
  end
end
