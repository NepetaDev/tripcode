defmodule TripcodeTest do
  use ExUnit.Case
  doctest Tripcode

  test "sTrIKeleSs" do
    assert Tripcode.make("廨A齬ﾙｲb") == "sTrIKeleSs"
  end

  test "characters outside of shift-jis" do
    assert Tripcode.make("ęęęę") == "Vyfxi/dpqw"
  end

  test "normal characters" do
    assert Tripcode.make("d'H~I_CA") == "qDASHIEwag"
  end
end
