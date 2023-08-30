Rails.application.routes.draw do
  # Square calc routes
  get("/", controller: "calc", action: "square")
  get("/square/new", controller: "calc", action: "square")

  get("/square/results", controller: "calc", action: "square_result")

  # Square root calc routes
  get("/square_root/new", controller: "calc", action: "root")
  get("/square_root/results", controller: "calc", action: "root_result")

  # Payment routes
  get("/payment/new", controller: "calc", action: "payment")
  get("/payment/results", controller: "calc", action: "payment_result")

  # random routes
  get("/random/new", controller: "calc", action: "random")
  get("/random/results", controller: "calc", action: "random_result")
end
