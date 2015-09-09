# Calculate a Grade

# I worked on this challenge [with: Mike Cerrone].

def get_grade(num)
  if num >= 90
    puts 'A'
  elsif num >= 80 and num <= 89
    puts 'B'
  elsif num >= 70 and num <= 79
    puts 'C'
  elsif num >= 60 and num <= 69
    puts 'D'
  elsif num < 60
    puts 'F'
  end
end


# Your Solution Below