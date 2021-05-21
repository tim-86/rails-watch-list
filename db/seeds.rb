# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



require 'json'
require 'open-uri'

Movie.destroy_all
puts "Deleting database"


url = 'http://tmdb.lewagon.com/movie/top_rated'
user_serialized = URI.open(url).read
movies = JSON.parse(user_serialized)["results"]

movies.each do |result| 
  Movie.create(title: result["title"], rating: result["vote_average"], overview: result["overview"], poster_url:"https://image.tmdb.org/t/p/original#{result["poster_path"]}")
end

puts "Movies added"