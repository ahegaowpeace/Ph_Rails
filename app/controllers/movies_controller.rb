class MoviesController < ApplicationController
  def index
    @movies = Movie.order(id: :desc).page(params[:page]).per(20)
  end

  def show
    @movie = Movie.find(params[:id])
  end
end
