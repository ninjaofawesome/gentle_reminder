class AddMoneyColumnToGoals < ActiveRecord::Migration
  def change
  	add_column :goals, :monetary_amount, :integer
  end
end
