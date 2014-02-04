class Github

  attr_reader :client, :user

  def initialize(user) 
    @client = Octokit::Client.new :access_token => user.github_token
    @user = user
    @client.api_endpoint = "https://api.github.com" 
  end

  def build_repo_name(repo)
    user.github_name + "/#{repo}"
  end

  def commits(repo, branch="master", date)
    self.client.commits(build_repo_name(repo), branch, {:since => date})
  end

  def count_commits
    commits.size
  end

  #other Octokit methods here like get.data
end