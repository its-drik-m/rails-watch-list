# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

# variable to store text message after databse seed
ok = '>  Seeding completed'

puts '> Deleting list'
List.destroy_all
puts '> Deleting bookmarks'
Bookmark.destroy_all
puts '> Deleting movies'
Movie.destroy_all
puts '> Records deleted'

puts 'Seeding Movie database...'

mov1 = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
mov2 = Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
mov3 = Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
mov4 = Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

puts ok

puts 'Seeding list database...'
ls1 = List.create(name: 'Drama')
ls2 = List.create(name: 'All time favourites')
ls3 = List.create(name: 'Girl Power')

puts ok

puts 'Seeding Bookmark database...'
Bookmark.create!(comment: 'recommended by Mr.X', movie_id: mov1.id, list_id: ls3.id)
Bookmark.create!(comment: 'Crime movies', movie_id: mov3.id, list_id: ls2.id)
Bookmark.create!(comment: 'Romantic movie', movie_id: mov2.id, list_id: ls1.id)
Bookmark.create!(comment: 'Bruhh...', movie_id: mov4.id, list_id: ls2.id)
puts ok


# require 'json'
# require 'open-uri'


# api_key = ''
# poster_url = 'https://image.tmdb.org/t/p/original/'
# url = "https://api.themoviedb.org/3/movie/popular?api_key=#{api_key}"
