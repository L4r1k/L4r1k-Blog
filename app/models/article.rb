class Article < ApplicationRecord
  belongs_to :category

  validates :title, :description, :tags, presence: true
end
