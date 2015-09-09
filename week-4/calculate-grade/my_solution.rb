# Calculate a Grade

# I worked on this challenge [with: Mike Cerrone].

def get_grade(num)
  if num >= 90
    return 'A'
  elsif num >= 80 and num <= 89
    return 'B'
  elsif num >= 70 and num <= 79
    return 'C'
  elsif num >= 60 and num <= 69
    return 'D'
  else num < 60
    return 'F'
  end
end


