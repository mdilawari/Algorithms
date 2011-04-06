def my_merge_sort(a)

  return a if a.nil? || a.length==1

  half = (a.length / 2).floor
  b = my_merge_sort(a[0..half-1])
  e = my_merge_sort(a[half..a.length])
  merge(b,e)
end

def merge(b,e)
  return e if b.nil?
  return b if e.nil?


  i = j = 0
  finished = false
  newArray = []

  begin
    if (i>=b.length && j>= e.length)
      finished = true
    elsif (i< b.length) && (j >= e.length || b[i] < e[j])
      newArray << b[i]
      i +=1
    else
      newArray << e[j]
      j +=1
    end
  end while !finished
  newArray
end

a = (1..20).to_a.shuffle
puts a.join(', ')
puts my_merge_sort(a).join(', ')

