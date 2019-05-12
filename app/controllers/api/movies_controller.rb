class Api::MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
    render 'show.json.jbuilder'
  end

  def index
    @movies = Movie.all
    render 'index.json.jbuilder' 
  end

end
