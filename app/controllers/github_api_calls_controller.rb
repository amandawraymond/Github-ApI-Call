class GithubApiCallsController < ApplicationController
  def repository_information
    @repos = GithubApiCall.github_repo_info("ruby", 50)
  end
end