defmodule Counter.Core do
  def inc(number) when is_integer(number), do: number + 1
end
