class ChangeGoalColumnType < ActiveRecord::Migration
  def change
  	change_column :goals, :commitments, :integer
  	change_column :goals, :meetups, :integer
  end
end
