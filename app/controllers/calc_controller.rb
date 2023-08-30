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
    @number = params.fetch("square_root").to_i
    @root = @number ** 0.5
    render template: "calc/root_result"
  end

  # payment actions
  def payment
    render template: "calc/payment"
  end

  def payment_result
    # params = {"apr"=>"5.42", "years"=>"10", "principal"=>"10000"}
    pv = params.fetch("principal").to_f
    @principal = pv.to_s(:currency)

    rate = params.fetch("apr").to_f
    @apr = rate.to_s(:percentage, { precision: 4 })
    r = rate / 12 / 100

    @years = params.fetch("years")
    n = @years.to_i * -12

    numerator = r * pv
    denominator = 1 - (1+ r) ** n

    p = numerator / denominator
    @payment = p.to_s(:currency)

    render template: "calc/payment_result"
  end

end
