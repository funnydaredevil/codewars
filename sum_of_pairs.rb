def sum_pairs(ints, s)
  matches = []

  last_val = nil
  ints.each do |i|
    # Pass only unique sequences
    next if last_val == i
    last_val = i

    # Indexes of pair values
    index_i = ints.index i
    index_s_i = ints.index(s-i)

    handle_repeated = index_i == index_s_i ? ints.count(i) > 1 : true
    
    return [i, s-i] if index_s_i && index_i && (index_s_i - index_i).abs == 1
    
    if index_i && index_s_i && !matches.at((index_s_i - index_i).abs) && handle_repeated
      matches.insert((index_s_i - index_i).abs, [i, s-i])
    end
  end
  return matches.compact.first
end