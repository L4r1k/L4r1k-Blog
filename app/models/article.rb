class Article < ApplicationRecord
  belongs_to :category, optional: true
  enum status: [:published, :unpublished]

  validates :title, :description, :tags, presence: true
end
