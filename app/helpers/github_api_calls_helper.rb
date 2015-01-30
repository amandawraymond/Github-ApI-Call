module GithubApiCallsHelper
  def repositories_with_forks
    @repos.select do |repo|
      repo["forks"] > 5
    end
  end

  def repository_count
    repositories_with_forks.count
  end

end