class SearchController < ApplicationController
  def index
    @movies = Movie.where('title like ?', "%#{params[:keyword]}%").order(title: :asc).page(params[:page]).per(20)
  end
end
