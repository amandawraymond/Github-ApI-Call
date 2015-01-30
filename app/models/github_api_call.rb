class GithubApiCall

  # decided to not used OAuth for this simple application
  def self.github_repo_info(language)
    language = URI.encode(language)
    search_url = "https://api.github.com/search/repositories?q=language:#{language}&per_page=50"
    response = HTTParty.get search_url
    response["items"]
  end

end