class Api::MoviesController < ApplicationController
  def show
    @movie = Movie.find(params[:id])
    render 'show.json.jbuilder'
  end

  def index
    @movies = Movie.all
    render 'index.json.jbuilder' 
  end

  def create
    @movie = Movie.new(
      title: params[:title],
      year: params[:year],
      director: params[:director],
      plot: params[:plot]
      )
    @movie.save
    render 'show.json.jbuilder'   
  end 

  def update
    @movie = Movie.find(params[:id])
    @movie.title = params[:title] || @movie.title
    @movie.year = params[:year]  || @movie.year
    @movie.director = params[:director]  || @movie.director
    @movie.english = params[:english]  || @movie.english
    @movie.plot = params[:plot] || @movie.plot

    @movie.save
    render 'show.json.jbuilder'
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.destroy
    render json: {message: "Film removed"}
  end
end
