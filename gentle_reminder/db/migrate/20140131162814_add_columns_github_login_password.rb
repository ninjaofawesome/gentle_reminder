class AddColumnsGithubLoginPassword < ActiveRecord::Migration
  def change
    add_column :users, :github_login, :string
    add_column :users, :github_password, :string
  end
end
