Rails.application.routes.draw do
  # Square calc routes
  get("/", controller: "calc", action: "square")
  get("/square/new", controller: "calc", action: "square")

  get("/square/results", controller: "calc", action: "square_result")

  # Square root calc routes
  get("/square_root/new", controller: "calc", action: "root")
  get("/square_root/results", controller: "calc", action: "root_result")
end
