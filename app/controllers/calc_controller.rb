class CalcController < ApplicationController
  #square actions
  def square
    render template: "calc/square"
  end

  def square_result
    @number = params.fetch("square").to_i
    @square = @number ** 2
    render template: "calc/square_result"
  end

  #root actions
  def root
    render template: "calc/root"
  end

  def root_result
    render template: "calc/root_result"
  end

end
