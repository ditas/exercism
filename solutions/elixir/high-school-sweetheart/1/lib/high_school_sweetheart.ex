defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name |> String.trim() |> String.first()
  end

  def initial(name) do
    name |> first_letter() |> String.upcase() |> Kernel.<>(".")
  end

  def initials(full_name) do
    [first_name, last_name | _] = String.split(full_name, " ", global: false)

    first_name
    |> first_letter()
    |> initial()
    |> Kernel.<>(" ")
    |> Kernel.<>(last_name |> first_letter() |> initial())
  end

  def pair(person1, person2) do
    p1 = person1 |> initials()
    p2 = person2 |> initials()

    """
    ❤-------------------❤
    |  #{p1}  +  #{p2}  |
    ❤-------------------❤
    """
  end
end
