defmodule Lasagna do
  def expected_minutes_in_oven() do
    40
  end

  def remaining_minutes_in_oven(minutes_spent) do
    Lasagna.expected_minutes_in_oven() - minutes_spent
  end

  def preparation_time_in_minutes(layers) do
    layers*2
  end

  def total_time_in_minutes(layers, minutes_spent) do
    layers*2 + minutes_spent
  end

  def alarm() do
    "Ding!"
  end
end
