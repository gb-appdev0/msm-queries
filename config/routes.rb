Rails.application.routes.draw do
  get("/", { :controller => "application", :action => "homepage" })
  get("/directors", { :controller => "directors", :action => "index" })
  get("/actors", { :controller => "actors", :action => "index" })
  get("/directors/:id",{ :controller => "directors", :action => "bio"})
end
