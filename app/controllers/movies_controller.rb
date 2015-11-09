class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def show
    @movie = Movie.find
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def movie_params
    params.require(:title, :summary, :youtube_embedded_id, :thumbnail)
  end
end
