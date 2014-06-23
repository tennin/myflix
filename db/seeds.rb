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

avenger = Video.create(title: 'avenger', description: 'avenger description', small_cover_url: '/tmp/avengers.jpg', large_cover_url: '/tmp/avengers_large.jpg', category: horror)

batman = Video.create(title: 'batman', description: 'batman description', small_cover_url: '/tmp/batman.jpg', large_cover_url: '/tmp/batman_large.jpg', category: horror)

batman3 = Video.create(title: 'batman3', description: 'batman3 description', small_cover_url: '/tmp/batman3.jpg', large_cover_url: '/tmp/batman3_large.jpg', category: horror)

conjuring = Video.create(title: 'conjuring', description: 'conjuring description', small_cover_url: '/tmp/conjuring.jpg', large_cover_url: '/tmp/conjuring_large.jpg', category: horror)

batman_returns = Video.create(title: 'batman returns', description: 'batman returns description', small_cover_url: '/tmp/batman_returns.jpg', large_cover_url: '/tmp/batman_returns_large.jpg', category: horror)


