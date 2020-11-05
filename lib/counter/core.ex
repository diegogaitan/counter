defmodule Counter.Core do
  def inc(number) when is_number(number), do: number + 1
end
