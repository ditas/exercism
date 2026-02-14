defmodule FreelancerRates do

  def daily_rate(h_rate) do
    h_rate * 8.0
  end

  def apply_discount(n, disc) do
    n * (1 - (disc/100))
  end

  def monthly_rate(h_rate, disc) do
    ceil(apply_discount(22 * daily_rate(h_rate), disc))
  end

  def days_in_budget(budg, h_rate, disc) do
    Float.floor(budg / apply_discount(daily_rate(h_rate), disc), 1)
  end

end
