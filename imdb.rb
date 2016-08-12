require "pry"
require "imdb"

class Movie
	attr_reader :title, :rating
	def initialize title, rating
		@title = title
		@rating = rating
	end
end

class MovieSearcher
	attr_reader :titles_array, :movies
	def initialize 
		@titles_array = []
		@movies = [] #Array de objetos movie
	end

	def read_movies_from_file(file)
		read_list = IO.read(file)
		@titles_array = read_list.split("\n")  
	end 


	def get_movie_rating
	 @titles_array.each do |perro|
	 	search = Imdb::Search.new(perro)
	 		@movies.push(Movie.new(search.movies[0].title, search.movies[0].rating))
		end
	end

	def show_details
		@movies.each do |movie|
			puts "#{movie.title} has a score of #{movie.rating}"
		end
	end
end

movie_searcher = MovieSearcher.new 
movie_searcher.read_movies_from_file("list.txt")
#p+uts ms.titles_array
movie_searcher.get_movie_rating
movie_searcher.show_details


