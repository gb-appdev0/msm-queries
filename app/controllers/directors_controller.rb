class DirectorsController < ApplicationController


  def index
    @list_of_directors = Director.all

    render({ :template => "directors_template/index.html.erb"})
  end

  def bio
    @id = params.fetch("id")
    @dir = Director.all.where({ :id => @id })[0]
    @count = Movie.where({ :director_id => @id })
    @movie_list = Movie.where({ :director_id => @id })
    render({ :template => "directors_template/bio.html.erb"})
  end

  def eldest
    old_dir = Director.all.where.not({ :dob => nil }).order({ :dob => :asc })[0]
    @name_old = old_dir.name
    @dob_old = old_dir.dob.strftime("%B %d, %Y")
    @id_old = old_dir.id
    render({ :template => "directors_template/eldest.html.erb"})
  end

  def youngest
    young_dir = Director.all.order({ :dob => :desc })[0]
    @name_young = young_dir.name
    @dob_young = young_dir.dob.strftime("%B %d, %Y")
    @id_young = young_dir.id
    render({ :template => "directors_template/youngest.html.erb"})
  end
end