Rails.application.routes.draw do
  get("/", controller: "calc", action: "index")
  get("/square/new", controller: "calc", action: "index")
  
  get("/square/results", controller: "calc", action: "square")
end
