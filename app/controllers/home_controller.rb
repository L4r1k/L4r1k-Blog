class HomeController < ApplicationController
  include ApplicationHelper
  def index
    github_client = Octokit::Client.new(access_token: Rails.application.credentials.dig(:github, :token) {
      raise "Make sure you have configured a mysql user"
    })

    repos = github_client.repos({}, query: {type: 'owner', sort: 'updated', direction: 'asc'}).first(3)
    parsed_repos = {}
    repos.each do |repo|
      parsed_repos[repo.name] = {
        'description': emojify(repo.description),
        'updated_at': repo.updated_at
      }
    end
  end
end
