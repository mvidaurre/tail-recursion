# Calculate the nth Fibonacci number, f(n). Using invariants
def fibo_tr(n, next_item, result)
  if n == 0
    0
  elsif n < 2
    result
  else
    return fibo_tr(n - 1, result, result + next_item)
  end
end

def fibo (n)
  fibo_tr(n, 0, 1)
end 

# Display the Fibonacci sequence.
(1..5000).each do |number|
  puts "fibo(#{number}) = #{fibo(number)}"
end