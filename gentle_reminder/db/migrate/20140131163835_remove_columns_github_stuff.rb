class RemoveColumnsGithubStuff < ActiveRecord::Migration
  def change
    remove_columns :users, :github_login, :string
    remove_columns :users, :github_password, :string
  end
end
