#smallest_integer = nil

def smallest_integer(list_of_nums)
  x = (list_of_nums)
  return x.min
end


# Look at all this other code I tried! GEEEEEZ
=begin
smallest = nil #goes outside of the method
  smallest_integer.each do |number|
    if smallest == nil
      smallest = number
      return smallest
    elsif smallest > number
      smallest = number
      return smallest
    elsif smallest < number
      next
    end
----------
  smallest = smallest_integer.min
  return smallest
  puts smallest
----------
    if smallest == nil
      smallest = number
      return smallest
    elsif smallest > number
      smallest = number
      return smallest
    elsif smallest < number
      next
    end
----------
  smallest_integer.each do |number|
    if smallest == nil
      smallest = number
      return smallest
    elsif smallest > number
      smallest = number
      return smallest
    elsif smallest < number
      next
    end
  end
end
=end
