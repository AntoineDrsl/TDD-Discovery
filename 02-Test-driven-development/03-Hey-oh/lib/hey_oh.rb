# TO DO: Write a method that takes an array and modify it according to the rules.

def hey_oh(array)
  return 'First argument must be an array of integers' unless array.is_a? Array
  return 'First argument must be an array of integers' unless array.all? { |i| i.is_a?(Integer) }

  return array.map { |i| (i % 3).zero? && (i % 5).zero? ? 'HeyOh' : ((i % 5).zero? ? 'Oh' : ((i % 3).zero? ? 'Hey' : i)) }
end
