class ChangeColumnTypesGolasTable < ActiveRecord::Migration
  def change
    add_column :goals, :goal_id, :integer
    add_column :goals, :charity_id, :integer
    remove_column :goals, :goal_type
    remove_column :goals, :programming_language_id
  end
end
