class CalcController < ApplicationController
  #square actions
  def square
    render template: "calc/square"
  end

  def square_result
    @number = params.fetch("square")
    @square = @number.to_f ** 2
    render template: "calc/square_result"
  end

  #root actions
  def root
    render template: "calc/root"
  end

  def root_result
    @number = params.fetch("square_root")
    @root = @number.to_f ** 0.5
    render template: "calc/root_result"
  end

  # payment actions
  def payment
    render template: "calc/payment"
  end

  def payment_result
    # params = {"apr"=>"5.42", "years"=>"10", "principal"=>"10000"}
    @principal = params.fetch("principal").to_f

    @apr = params.fetch("apr").to_f
    r = @apr / 12.0 / 100.0

    @years = params.fetch("years").to_i
    n = @years * 12.0

    numerator = r * @principal
    denominator = 1.0 - ((1.0 + r) ** -n)

    @payment = numerator / denominator

    render template: "calc/payment_result"
  end

  # random actions
  def random
    render template: "calc/random"
  end

  def random_result
    @min = params.fetch("min").to_f
    @max = params.fetch("max").to_f

    @random = rand(@min..@max).to_f

    render template: "calc/random_result"
  end

end
