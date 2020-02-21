class AddRepoIdToRepositories < ActiveRecord::Migration[6.0]
  def change
    add_column :repositories, :repo_id, :integer
    add_index :repositories, :repo_id, unique: true
  end
end
