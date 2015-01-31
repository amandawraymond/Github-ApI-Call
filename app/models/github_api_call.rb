class GithubApiCall
  def self.github_repository_info(language,forks,limit)
    language   = URI.encode(language)
    search_url = "https://api.github.com/search/repositories?q=language:#{language}+forks:%3E#{forks}&per_page=#{limit}"
    response   = HTTParty.get search_url
    response["items"]
  end

  def self.repositories_top_contributors(repositories)
    repositories.map do |repo|
      url = repo["contributors_url"].to_s
      response = HTTParty.get url
      response.first
      # after api call limit uncomment below:
      # response.first["login"]
    end
  end 
end