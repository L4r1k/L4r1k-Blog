class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :description
      t.string :tags
      t.integer :status
      t.datetime :published_at
      t.belongs_to :category
      t.timestamps
    end
  end
end
