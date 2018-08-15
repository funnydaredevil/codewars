def sum_pairs(ints, s)
  matched = []
  # puts ints.inspect
  puts "======================== #{ints.length}"
  ints_min = ints.min
  ints_max = ints.max

  last_val = nil
  ints.each do |i|
    next if last_val == i
    last_val = i

    # next if ints_min + i > s

    # return if (ints_max + ints_min) < s && (ints_max * 2) > s

    rindex_i = ints.index i
    rindex_s_i = ints.index(s-i)

    handle_repeated = rindex_i == rindex_s_i ? ints.count(i) > 1 : true
   # puts "rind: #{(rindex_s_i.to_i - rindex_i.to_i).abs} for #{[i.to_i, s.to_i-i.to_i]}" if rindex_i && rindex_s_i && !matched.at((rindex_s_i - rindex_i).abs) && handle_repeated

    # puts "SI: #{rindex_s_i} I: #{rindex_i}  Diff: #{(rindex_s_i - rindex_i).abs == 1} End: #{rindex_s_i && rindex_i && (rindex_s_i - rindex_i).abs == 1}"
    return [i, s-i] if rindex_s_i && rindex_i && (rindex_s_i - rindex_i).abs == 1
    
    
    matched.insert((rindex_s_i - rindex_i).abs, [i, s-i]) if rindex_i && rindex_s_i && !matched.at((rindex_s_i - rindex_i).abs) && handle_repeated
  end
  # puts matched.inspect
  puts matched.compact.inspect
  return matched.compact.first
end


def x_sum_pairs(ints, s)
  uniqued_ints = ints.uniq
  matched = []
  uniqued_ints.map { |i|
    if i*2==s && ints.count(i) > 1
      # return [i,i]
      matched.insert((uniqued_ints.index(s-i) - uniqued_ints.index(i)).abs, [i,i])
    elsif ints.index(s-i)# && (uniqued_ints.index(s-i) - uniqued_ints.index(s-i)).positive?
      puts "#{(uniqued_ints.index(s-i) - uniqued_ints.index(i))} for #{[i, s-i]}"
      # return [i, s-i] if (uniqued_ints.index(s-i) - ints.index(i)) == 1
      matched.insert((uniqued_ints.index(s-i) - uniqued_ints.index(s)), [i, s-i])
    end
  }
  puts matched.inspect
  matched.compact.last
end