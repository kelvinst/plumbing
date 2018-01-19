defmodule PlumbingTest do
  use ExUnit.Case
  doctest Plumbing

  import ExUnit.CaptureIO

  test "tee/2 always returns the subject" do
    assert capture_io(fn ->
      assert Plumbing.tee("This is a tee!", &IO.inspect(String.length(&1))) == "This is a tee!"
    end) == "14\n"
  end
end
