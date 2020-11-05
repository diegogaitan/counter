defmodule Counter.CoreTest do
  use ExUnit.Case

  test "inc" do
    assert Counter.Core.inc(10) == 11
  end

end
