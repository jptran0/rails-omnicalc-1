class CalcController < ApplicationController
  def index
    render template: "calc/square"
  end

  def square
    @number = params.fetch("square").to_i
    @square = @number ** 2
    render template: "calc/square_result"
  end
end
