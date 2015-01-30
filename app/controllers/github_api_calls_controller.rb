class GithubApiCallsController < ApplicationController
  def repository_information
    @repositories    = GithubApiCall.github_repository_info("ruby",5, 50)
    @top_contributor = @repositories.each do |repo|
      GithubApiCall.repository_top_contributor(repo["contributors_url"])
    end
  end
end