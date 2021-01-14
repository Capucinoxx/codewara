def sum_of_intervals(intervals)
  intervals.map{ |x| x = [*(x[0]...x[1])] }.flatten.uniq.length
end
