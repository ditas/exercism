defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter({:cup, amount}) do
    {:milliliter, amount * 240}
  end
  def to_milliliter({:fluid_ounce, amount}) do
    {:milliliter, amount * 30}
  end
  def to_milliliter({:teaspoon, amount}) do
    {:milliliter, amount * 5}
  end
  def to_milliliter({:tablespoon, amount}) do
    {:milliliter, amount * 15}
  end
  def to_milliliter({:milliliter, amount}) do
    {:milliliter, amount}
  end

  def from_milliliter(volume_pair, unit) do
    convert(volume_pair, unit)
  end

  def convert(volume_pair, unit) do
    vol = get_volume(volume_pair)
    {_, mill_vol} = to_milliliter(volume_pair)
    cond do
      unit == :cup -> {unit, mill_vol/240}
      unit == :fluid_ounce -> {unit, mill_vol/30}
      unit == :teaspoon -> {unit, mill_vol/5}
      unit == :tablespoon -> {unit, mill_vol/15}
      unit == :milliliter -> {unit, mill_vol}
      true -> :error
    end
  end
end
