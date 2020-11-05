defmodule Counter.Server do
  use GenServer
  alias Counter.Core

  def start_link(initial_state) when is_number(initial_state) do
    GenServer.start_link(__MODULE__, initial_state)
  end

  def init(state) do
    {:ok, state}
  end

  def handle_call(:state, _from, state) do
    {:reply, state, state}
  end

  def handle_cast(:inc, state) do
    {:noreply, Core.inc(state)}
  end
end
