def binary(num)
  binaryStr = ''
  while num>=1
    binaryStr += (num % 2).to_s
    num /= 2
  end
  binaryStr.reverse
end

puts "9: #{binary(9)}"
puts "156: #{binary(156)}"
puts "256: #{binary(256)}"
puts "300: #{binary(300)}"

