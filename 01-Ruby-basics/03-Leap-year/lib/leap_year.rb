require 'Date'

def leap?(year)
  # TO DO: Write a method that takes a year and returns if it’s a leap year or not.
  return 'Argument is not a year' unless year.is_a? Integer
  return Date.new(year).leap?
end

def big_leap(year)
  # TO DO: Let's improve the method above by adding some text.
  return 'Argument is not a year' unless year.is_a? Integer
  if Date.new(year).leap?
    return "#{year} is a leap year."
  else
    next_year = year + 1
    next_year += 1 until Date.new(next_year).leap?
    return "#{year} is not a leap year. The next one is #{next_year}."
  end
end
