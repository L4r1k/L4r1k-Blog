class HomeController < ApplicationController
  def index
    github_client = Octokit::Client.new(access_token: Rails.application.credentials.dig(:github, :token) {
      raise "Make sure you have configured a mysql user"
    })

    @repos = github_client.repos({}, query: {type: 'owner', sort: 'updated', direction: 'asc'}).first(3)
  end
end
