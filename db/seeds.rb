# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(title: 'Test Category', description: 'This is a test category', tags: 'test, testCategory, category')
Article.create(title: 'Test Article', description: 'This is a test article', tags: 'test, testArticle, article', category_id: 1)