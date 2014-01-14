class AddGoalIdToCharities < ActiveRecord::Migration
  def change
    add_column :charities, :goal_id, :integer
  end
end
