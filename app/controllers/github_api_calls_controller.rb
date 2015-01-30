class GithubApiCallsController < ApplicationController
  def repository_information
    @repos = GithubApiCall.github_repo_info("ruby")
  end
end