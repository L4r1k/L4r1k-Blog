class AddDownloadUrlsToRepositories < ActiveRecord::Migration[6.0]
  def change
    add_column :repositories, :download_url, :string
  end
end
