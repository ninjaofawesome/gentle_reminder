class AddColumnsToGoalsTable < ActiveRecord::Migration
  def change
  	add_column :goals, :commitments, :string
  	add_column :goals, :meetups, :string
  	add_column :goals, :timeframe, :date
  end
end
