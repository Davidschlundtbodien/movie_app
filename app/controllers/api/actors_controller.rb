class Api::ActorsController < ApplicationController
  #def single_actor
  #  @actor = Actor.find_by(id: 3)
  #  render 'single_actor.json.jbuilder'
  #end
  def actor_query
    @actor = Actor.find(params[:id])
    render 'single_actor.json.jbuilder'
  end

  def actor_segment
    @actor = Actor.find(params[:id])
    render 'single_actor.json.jbuilder'
  end
  
  def actor_body
    @actor = Actor.find(params[:id])
    render 'single_actor.json.jbuilder'   
  end 


end
