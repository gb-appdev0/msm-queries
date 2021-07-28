class ActorsController < ApplicationController

  def index
    @list_of_actors = Actor.all
    render({ :template => "actors_template/index.html.erb"})
  end

  def bio
    @id = params.fetch("id")
    @dir = Actor.all.where({ :id => @id })[0]

    @character_list = Character.all.where({ :actor_id => @id })
    render({ :template => "actors_template/bio.html.erb"})
  end

end