class GithubApiCallsController < ApplicationController
  def repository_information
    @repositories    = GithubApiCall.github_repo_info("ruby",5, 50)
    @top_contributor = @repositories.each do |repo|
      GithubApiCall.repo_top_contributor(repo["contributors_url"])
    end
  end
end