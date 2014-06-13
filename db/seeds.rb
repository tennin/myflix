# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



horror = Category.create(name: 'horror')
comedy = Category.create(name: 'comedy')
romance = Category.create(name: 'romance')


monk = Video.create(title: 'monk', description: 'monk description', small_cover_url: '/tmp/monk.jpg', large_cover_url: '/tmp/monk_large.jpg', category: horror)

skyfall = Video.create(title: 'skyfall', description: 'skyfall description', small_cover_url: '/tmp/skyfall.jpg', large_cover_url: '/tmp/skyfall_large.jpg', category: romance)

spiderman = Video.create(title: 'spiderman', description: 'spiderman description', small_cover_url: '/tmp/spiderman.jpg', large_cover_url: '/tmp/spiderman_large.jpg', category: horror)

transformers = Video.create(title: 'transformers', description: 'transformers description', small_cover_url: '/tmp/transformers.jpg', large_cover_url: '/tmp/transformers_large.jpg', category: comedy)


