class Api::ActorsController < ApplicationController

  def index
    @actors = Actor.all.order(age: :desc)
    render 'index.json.jbuilder'
  end

  def show
    @actor = Actor.find(params[:id])
    render 'show.json.jbuilder'
  end
  
  def create
    @actor = Actor.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      gender: params[:gender],
      age: params[:age],
      known_for:params[:known_for]
      )
    if @actor.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @actor.errors.full_messages}, status: :not_acceptable
    end   
  end 

  def update
    @actor = Actor.find(params[:id])
    @actor.first_name = params[:first_name] || @actor.first_name
    @actor.last_name = params[:last_name]  || @actor.last_name
    @actor.gender = params[:gender]  || @actor.gender
    @actor.age = params[:age]  || @actor.age
    @actor.known_for = params[:known_for] || @actor.known_for

    if @actor.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @actor.errors.full_messages}, status: :not_acceptable
    end  
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.destroy
    render json: {message: "Actor removed"}
  end

end
