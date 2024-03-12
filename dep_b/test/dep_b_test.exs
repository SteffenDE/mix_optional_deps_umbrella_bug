defmodule DepBTest do
  use ExUnit.Case
  doctest DepB

  test "greets the world" do
    assert DepB.hello() == :world
  end
end
