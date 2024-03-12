defmodule DepATest do
  use ExUnit.Case
  doctest DepA

  test "greets the world" do
    assert DepA.hello() == :world
  end
end
