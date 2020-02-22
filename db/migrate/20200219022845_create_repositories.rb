class CreateRepositories < ActiveRecord::Migration[6.0]
  def change
    create_table :repositories do |t|
      t.string :name
      t.text :description
      t.string :html_url
      t.datetime :repo_updated_at
      t.timestamps
    end
  end
end
