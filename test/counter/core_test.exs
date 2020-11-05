defmodule Counter.CoreTest do
  use ExUnit.Case

  test "inc" do
    assert Counter.Core.inc(10) == 11
    assert Counter.Core.inc(10.1) == 11.1
  end
end
