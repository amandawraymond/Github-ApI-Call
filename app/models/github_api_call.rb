class GithubApiCall
  def self.github_repository_info(language,forks,limit)
    language   = URI.encode(language)
    search_url = "https://api.github.com/search/repositories?q=language:#{language}+forks:%3E#{forks}&per_page=#{limit}"
    response   = HTTParty.get search_url
    response["items"]
  end

  def self.repository_top_contributor(url)
    response = JSON.parse(HTTParty.get url) 
    response.first["login"]
  end
end