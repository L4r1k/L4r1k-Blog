# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.create(title: 'Test Category', description: 'This is a test category', tags: 'test, testCategory, category')
Category.create(title: 'Reverse Engineering', description: 'Malware reverse engineering and related research', tags: 'reverse-engineering')
Category.create(title: 'Projects', description: 'Descriptions, explanations and examples of current and past projects', tags: 'projects')
Category.create(title: 'Vulnerability Research', description: '', tags: '')
Category.create(title: 'Personal', description: 'Personal stories and experiences', tags: 'personal')

Article.create(title: 'Test Article', description: 'This is a test article', tags: 'test, testArticle, article', category_id: 1)
Article.create(title: 'Citrix Netscaler (ADC) Analysis', description: 'Discussion of the CVE-2019-19781 including how it works, a timeline of discovery to exploitation, collecting artifacts and performing forensics on compromised', tags: 'research, vulnerability, citrix, netscaler, CVE-2019-19781', category_id: 4)
