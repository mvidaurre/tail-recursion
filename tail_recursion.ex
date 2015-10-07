# Calculate the nth Fibonacci number, f(n). Using invariants
defmodule Fibo do
  def of(n) when n < 1, do: IO.puts "n should be positive"
  def of(n), do: of(n, 1, 1) 
  def of(1, _, result), do: result
  def of(n, next, result), do: of(n - 1, next + result, next)
end
 
# Display the Fibonacci sequence.
Enum.each 1..5000, &IO.puts "fibo(#{&1}) = #{Fibo.of(&1)}"