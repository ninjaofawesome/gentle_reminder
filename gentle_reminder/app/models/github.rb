class Github

  def initialize(user)
    @client = Octokit::Client.new :access_token => user.remember_token
  end

  #other Octokit methods here like get.data
end