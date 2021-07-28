Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/actors", { :controller => "actors", :action => "index" })
  get("/directors/eldest",{ :controller => "directors", :action => "eldest"})
  get("/directors/youngest",{ :controller => "directors", :action => "youngest"})
  get("/movies", { :controller => "movies", :action => "index" })


  get("/directors/:id",{ :controller => "directors", :action => "bio"})
  get("/actors/:id", { :controller => "actors", :action => "bio" })
  get("/movies/:id", { :controller => "movies", :action => "bio" })


end
