def perimeter(n)
  i = 2; a = []; a[0] = 1; a[1] = 1
  while i <= n
    a[i] = a[i-1] + a[i-2]
    i += 1
  end
  a[n]
  a.inject(:+) * 4
end