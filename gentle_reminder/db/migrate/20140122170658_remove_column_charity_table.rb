class RemoveColumnCharityTable < ActiveRecord::Migration
  def change
    remove_column :charities, :goal_id
  end
end
