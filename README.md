# Counter

**Implementation of Counter using GenServer**

## Installation

The file `.tool-versions` for [asdf](https://github.com/asdf-vm/asdf) contains the Elixir version to use: `1.11.1`.

## Playing with the application

Through the `Counter` module to call the API methods that encapsulate the
OTP/GenServer calls:

```elixir
iex(1)> {:ok, counter} = Counter.start_link(20)
{:ok, #PID<0.141.0>}
iex(2)> Counter.state(counter)
20
iex(3)> Counter.inc(counter)
:ok
iex(4)> Counter.inc(counter)
:ok
iex(5)> Counter.inc(counter)
:ok
iex(6)> Counter.inc(counter)
:ok
iex(7)> Counter.state(counter)
24
```

## Running tests

Run `mix test` :

```
➜  counter (master) ✗ mix test
.....

Finished in 0.04 seconds
5 tests, 0 failures

Randomized with seed 421695
```
