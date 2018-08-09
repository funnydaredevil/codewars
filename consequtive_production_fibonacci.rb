def productFib(prod)
  fib = Hash.new do |numbers,index|
    numbers[index] = fib[index - 2] + fib[index - 1]
  end.update(0 => 0, 1 => 1)

  i = 1
  acc = 0

  while acc < prod
    acc = fib[i] * fib[i+1]
    return [fib[i], fib[i+1], true] if acc == prod
    return [fib[i], fib[i+1], false] if acc > prod
    i += 1
  end
end
