# Concatenate Two Arrays

# I worked on this challenge [by myself].


# Your Solution Below

def array_concat(array_1, array_2)
  return array_concat.each {|array_1,array_2| [array_1].concat([array_2])}
end

=begin
-------1st code pass--------------------
 for array in array_concat
    if array != nil or array != []
      return [array].concat[array]
    else
      return array
    end
  end
end


=end