# Leap Years

# I worked on this challenge [by myself].


# Your Solution Below

def leap_year?(year)
  if year % 4 == 0 and year % 100 != 0
    return true
  elsif year % 4 == 0 and year % 100 == 0 and year % 400 == 0
    return true
  else
    return false
  end
end