def perimeter(n)
  fib = Hash.new {|num, ind| num[ind] = ind > 1 ? fib[ind-2] + fib[ind-1] : ind}
  fib[n+1]
  fib.values.inject(:+) * 4
end