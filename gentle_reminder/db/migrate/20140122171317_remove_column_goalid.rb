class RemoveColumnGoalid < ActiveRecord::Migration
  def change
    remove_column :goal_types, :goal_id
    rename_column :goal_types, :name, :goal_name
  end
end
