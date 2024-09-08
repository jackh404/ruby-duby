def init
  @a = %w(a b c d)
  @b = [1, 2, 3, 4]
  puts ''
end

init

print @b+@a #=> [1, 2, 3, 4, "a", "b", "c", "d"]
init

print @b.slice(1,2) #=> [2, 3]
init

print @b.reverse #=> [4, 3, 2, 1]
init

print @b.collect{ |x| x+1 } #=> [2, 3, 4, 5]
init

print @a.rotate #=> ["b", "c", "d", "a"]
init

print @a.collect{ |x| x+x } #=> ["aa", "bb", "cc", "dd"]
init

