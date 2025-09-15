defmodule BirdCount do
  def today([]) do
    nil
  end

  def today([h | t]) do
    h
  end

  def increment_day_count([]) do
    [1]
  end

  def increment_day_count([h | t]) do
    [h + 1 | t]
  end

  def has_day_without_birds?([]) do
    false
  end

  def has_day_without_birds?([0 | t]) do
    true
  end

  def has_day_without_birds?([h | t]) do
    has_day_without_birds?(t)
  end

  def total(list) do
    total_rec(list, 0)
  end

  defp total_rec([], acc) do
    acc
  end

  defp total_rec([h | t], acc) do
    total_rec(t, acc + h)
  end

  def busy_days([]) do
    0
  end

  def busy_days(list) do
    busy_days_rec(list, 0)
  end

  defp busy_days_rec([], acc) do
    acc
  end

  defp busy_days_rec([h | t], acc) when h >= 5 do
    busy_days_rec(t, acc + 1)
  end

  defp busy_days_rec([h | t], acc) do
    busy_days_rec(t, acc)
  end
end
