class MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
    @list = List.find(params[:list_id])
  end
end
