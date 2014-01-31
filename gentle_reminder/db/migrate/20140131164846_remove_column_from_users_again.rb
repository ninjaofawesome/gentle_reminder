class RemoveColumnFromUsersAgain < ActiveRecord::Migration
  def change
    remove_column :users, :github_access_token, :string
  end
end
