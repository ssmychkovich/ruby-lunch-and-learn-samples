require 'set'

set = Set.new
set2 = Set.new

set.add 1
set.add 3
set.add 4

[1, 3, 4].each{|item|set2.add item}




puts "Number of elements in the set is #{set.count}"
puts "Are the sets equal? #{set==set2}"
