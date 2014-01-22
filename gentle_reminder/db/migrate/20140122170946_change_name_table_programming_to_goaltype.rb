class ChangeNameTableProgrammingToGoaltype < ActiveRecord::Migration
  def change
    rename_table('programming_languages', 'goal_types')
  end
end
