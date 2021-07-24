class DirectorsController < ApplicationController


  def index
    @list_of_directors = Director.all

    render({ :template => "directors_template/index.html.erb"})
  end

  def bio
    @id = params.fetch("id")
    render({ :template => "directors_template/bio.html.erb"})
  end
end