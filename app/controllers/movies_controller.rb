class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
    @list = List.find(params[:list_id])
  end

  def watched
    @movie = Movie.find(params[:id])
    @movie.watched = true
    @movie.save!
  end

end
