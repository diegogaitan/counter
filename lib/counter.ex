defmodule Counter do
  alias Counter.Server

  def start_link(initial_number) when is_number(initial_number) do
    Server.start_link(initial_number)
  end

  def state(counter), do: GenServer.call(counter, :state)
  def inc(counter), do: GenServer.cast(counter, :inc)
end
