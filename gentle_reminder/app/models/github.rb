class Github

  attr_reader :client, :user, :stack

  def initialize(user) 
    @client = Octokit::Client.new :access_token => user.github_token
    @user = user
    @client.api_endpoint = "https://api.github.com" 
  end

  def build_repo_name(repo)
    user.github_name + "/#{repo}"
  end

  def commits(repo, branch="master", date)
    begin
    self.client.commits(build_repo_name(repo), branch, {:since => date})
    rescue Octokit::Error => e
      Rails.logger.error
    end
  end

  def count_commits(repo, branch="master", date)
    commits(repo, branch, date).size
  end

  def track_weekly_commits(repo, branch="master")
    commits(repo, branch, Date.today - 7.days).size
  end

  def send_weekly_commits(repo, branch="master")
    if Date.today - goal.created_at >= 7.days
      track_weekly_commits(repo, branch)
    end 
  end 

end