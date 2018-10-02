defmodule GTTest do
  use ExUnit.Case
  doctest GT

  test "greets the world" do
    assert GT.hello() == :world
  end
end
