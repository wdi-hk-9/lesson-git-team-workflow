class MoviesController < ApplicationController

  def index
  @movie = Movie.all
 end

 def show
  @movie = Movie.find(params[:id])
 end

 def new
  @movie = Movie.new
 end

 def create
  @movie = Movie.new(movie_params)

  if @movie.save
    redirect_to @movie
  else
    render :new
  end
 end

 def edit
  @movie = Movie.find(params[:id])
 end

 def update
  @movie = Movie.find(arams[:id])
  if @movie.update(movie_params)
    redirect_to @movie
  else
    render :edit
  end
 end

 private

 def movie_params
  params.require(:movie).permit(:name, :year_of_birth, :thumbnail)
end


end
