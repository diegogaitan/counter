defmodule CounterTest do
  use ExUnit.Case

  setup do
    counter =
      start_supervised!(%{
        :id => Counter,
        :start => {Counter, :start_link, [10]}
      })

    %{:counter => counter}
  end

  test "state", %{:counter => counter} do
    assert Counter.state(counter) == 10
  end

  test "inc", %{:counter => counter} do
    Counter.inc(counter)
    Counter.inc(counter)
    Counter.inc(counter)
    assert Counter.state(counter) == 13
  end
end
