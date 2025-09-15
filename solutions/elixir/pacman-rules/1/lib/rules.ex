defmodule Rules do
  def eat_ghost?(pellet, touch) do
    pellet and touch
  end

  def score?(pellet, touch) do
    pellet or touch
  end

  def lose?(pellet, touch) do
    not pellet and touch
  end

  def win?(dots, pellet, touch) do
    dots and not Rules.lose?(pellet, touch)
  end
end
