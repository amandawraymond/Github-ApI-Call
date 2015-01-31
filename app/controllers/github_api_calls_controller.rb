class GithubApiCallsController < ApplicationController
  def repository_information
    @repositories = GithubApiCall.github_repository_info("ruby", 5, 50)
    @contributors = GithubApiCall.repositories_top_contributors(@repositories)
  end
end