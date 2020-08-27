class MoviesController < ApplicationController
  def index
    @movies = Movie.order(:id)
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
