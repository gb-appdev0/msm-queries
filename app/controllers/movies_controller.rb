class MoviesController < ApplicationController

  def index
    
    @movie_list = Movie.all

    render({ :template => "movies_template/index.html.erb" })
  end

  def bio
    @id = params.fetch("id")
    @dir = Movie.all.where({ :id => @id})[0]
    render({ :template => "movies_template/bio.html.erb" })
  end

end