class CreateJoinTable < ActiveRecord::Migration
  
  def change
    create_table :join_goal_tools do |t| 
      t.integer :goal_type_id
      t.integer :tool_id
    end
  end

end
