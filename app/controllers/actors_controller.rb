class ActorsController < ApplicationController
  def show
    @actors = Actor.all
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new(actor_params)
    if @actor.save

    else

    end
  end

  def edit

  end

  def update
  end

  def actor_params
    params.require(:name, :year_of_birth, :thumbnail)
  end
end
