defmodule PlumbingTest do
  use ExUnit.Case
  doctest Plumbing

  test "greets the world" do
    assert Plumbing.hello() == :world
  end
end
