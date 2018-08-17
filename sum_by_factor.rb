require 'prime'

def sumOfDivided(lst)
  combinations = lst.repeated_combination(lst.length).map(&:uniq).map{ |el| el.inject(:+) }.sort
  puts "Combs: #{combinations.uniq.inspect}"
  puts "Lst: #{lst}"

  prime_numbers = lst.map do |el|
    Prime.prime_division(el).map(&:first)
  end.inject(:+).uniq.sort
  puts "Prime nums: #{prime_numbers}"

  # variations = lst + (2..lst.count).map do |n|
  #   lst.repeated_combination(n).to_a.select {|el| (el.inject(:+).to_f / n) != el[0] }.map {|x| x.inject(:+)}
  # end.inject(:+)
  # puts "Vriations: #{variations.inspect}"
  
  prime_numbers.map.each_with_index do |el, ind|
    res = combinations.map { |x| find_sequence(lst, x, prime_numbers.length) }.uniq.reject {|el| el > lst.inject(:+) }
    puts "RES: #{res}"
    puts "[#{el}, #{res.select { |x| x % el == 0 }.inspect}]"
    
    [el, res.select { |x| x % el == 0 }.last ]
  end.sort
end

def find_sequence(val, num, comb_limit)
  (0..comb_limit+1).map do |n|
    val.uniq.combination(n).each.find_all { |value| value.reduce(:+) == num }
  end.reject(&:empty?).first.sort {|a| a.length }.first.inject(:+)
end
