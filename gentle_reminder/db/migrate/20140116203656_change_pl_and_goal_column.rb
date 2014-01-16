class ChangePlAndGoalColumn < ActiveRecord::Migration
  def change 
  
  # remove_column :programming_languages, :goal_id
  add_column :goals, :programming_language_id, :integer

  end

 
end
