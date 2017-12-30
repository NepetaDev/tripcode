defmodule Tripcode do
  @moduledoc """
  Documentation for Tripcode.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Tripcode.hello
      :world

  """
  def make(str) do
    sjis = :iconv.convert "utf-8", "shift-jis", str
    salt = String.slice(sjis <> "H.", 1..2)
      |> String.replace(~r/[^\.-z]/, ".")
      |> String.replace(":", "A")   #until i figure out something better ;_;
      |> String.replace(";", "B")
      |> String.replace("<", "C")
      |> String.replace("=", "D")
      |> String.replace(">", "E")
      |> String.replace("?", "F")
      |> String.replace("@", "G")
      |> String.replace("[", "a")
      |> String.replace("\\", "b")
      |> String.replace("]", "c")
      |> String.replace("^", "d")
      |> String.replace("_", "e")
      |> String.replace("`", "f")
    String.slice(Crypt3.crypt(sjis, salt), -10..-1)
  end
end
