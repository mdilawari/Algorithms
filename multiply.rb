def multiply(top, bottom)
  top = top.split.reverse
  bottom = bottom.split.reverse
  s = 0
  bottom.each_with_index {|b, p|
    top.each_with_index{|t, i|
      s += b.to_i * t.to_i * 10**p * 10**i
    }
  }
  s
end

puts multiply("0","0")
puts multiply("11","11")
puts multiply("15678","2345")
puts multiply("1567812123123123123","2345123123123")

