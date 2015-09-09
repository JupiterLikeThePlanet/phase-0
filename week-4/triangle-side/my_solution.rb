# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  if a <= 0 or b <= 0 or c <= 0
    return false
  elsif a+b<c
    return false
  elsif b+c<a
    return false
  elsif c+a<b
    return false
  else
    return true
  end
end