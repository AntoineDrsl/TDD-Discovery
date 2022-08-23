# TO DO: Write a method that convert the given number into a Roman numeral

def roman_style(number)
  return 'First argument must be an integer' unless number.is_a? Integer

  return ('M' * (number / 1000)) + 
    ('D' * (number % 1000 / 500)) + 
    ('C' * (number % 1000 % 500 / 100)) + 
    ('L' * (number % 1000 % 500 % 100 / 50)) + 
    ('X' * (number % 1000 % 500 % 100 % 50 / 10)) + 
    ('V' * (number % 1000 % 500 % 100 % 50 % 10 / 5)) + 
    ('I' * ((number % 1000 % 500 % 100 % 50 % 10 % 5)))
end
