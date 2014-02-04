class AddRepoColumnGoals < ActiveRecord::Migration
  def change
    add_column :goals, :repo, :string
  end
end
