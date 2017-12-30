defmodule TripcodeTest do
  use ExUnit.Case
  doctest Tripcode

  test "sTrIKeleSs" do
    assert Tripcode.make("廨A齬ﾙｲb") == "sTrIKeleSs"
  end
end
