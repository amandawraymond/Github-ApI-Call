class GithubApiCall
  def self.github_repo_info(language, limit)
    language   = URI.encode(language)
    limit      = limit.to_s
    search_url = "https://api.github.com/search/repositories?q=language:#{language}&per_page=#{limit}"
    response   = HTTParty.get search_url
    response["items"]
  end
end