def missing s
  val = -1
  (1..6).each do |i|
    array_size = s.length / i - 1
    
    array = s.scan(/.{#{i}}/).map(&:to_i)
    sequence = array_size.times.inject([array.first]) { |n| n << n.last.next }

    diff = sequence - array

    val = diff.first if diff.length == 1
    val = -1 if array.length.zero?
    val = -1 if sequence == array 
    val = -1 if diff.length > 1
    
    return val if val != -1
  end
  
  return val
end