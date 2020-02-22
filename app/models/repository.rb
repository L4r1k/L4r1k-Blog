class Repository < ApplicationRecord
  validates :name, :description, :html_url, :updated_at, presence: true

  def self.get_repos
    puts 'Getting repos..'
    github_client = Octokit::Client.new(access_token: Rails.application.credentials.dig(:github, :token) {
      raise 'Make sure you have configured a mysql user'
    })

    repos = github_client.repos({}, query: { type: 'owner' })

    repos.first(3).each do |repo|
      begin
        repo_download_url = github_client.content(repo.full_name, path: 'preview.png').download_url
      rescue Octokit::NotFound => e
        repo_download_url = 'https://github.com/L4r1k.png'
      end

      Repository.upsert(
        repo_id: repo.id,
        name: repo.name,
        description: repo.description,
        html_url: repo.html_url,
        repo_updated_at: repo.updated_at,
        download_url: repo_download_url,
        created_at: Time.now, # TODO: Find a better way to fix the fact that upsert doesn't run validations or generated these timestamps
        updated_at: Time.now
      )
    end

    Repository.all.each do |repo|
      puts "Updated #{repo.name}"
    end
    puts 'Done!'
  end
end
