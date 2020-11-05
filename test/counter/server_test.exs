defmodule Counter.ServerTest do
  use ExUnit.Case

  setup do
    counter = start_supervised!({Counter.Server, 5})
    %{:counter => counter}
  end

  test "state", %{:counter => counter} do
    assert GenServer.call(counter, :state) == 5
  end

  test "inc", %{:counter => counter} do
    GenServer.cast(counter, :inc)
    assert GenServer.call(counter, :state) == 6
  end
end
