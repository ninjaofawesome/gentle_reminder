class Github

  attr_reader :client

  def initialize(user) 
    @client = Octokit::Client.new :access_token => user.github_token
    @client.api_endpoint = "https://api.github.com" 
  end


  #other Octokit methods here like get.data
end