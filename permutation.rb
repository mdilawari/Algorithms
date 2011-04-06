def permutation(x)
  list = []
  _permutation("", x.split(''), list)
  list
end


def _permutation(curr, str, list)
  list << curr

  return if (str.nil? || str.empty?)

  (0..(str.length-1)).each{|x|
    remaining = str.clone
    let = remaining.slice!(x)
    _permutation(curr + let, remaining , list)
  }

end

puts "Permutation for: xx"
puts permutation("xx")
puts "\nPermutation for: abc"
puts permutation("abc")

