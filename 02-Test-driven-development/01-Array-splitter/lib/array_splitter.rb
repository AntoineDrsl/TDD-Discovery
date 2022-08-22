# TO DO: Write a method that splits an array into 2 different ones.

def array_splitter(array, index)
  return 'First argument must be an array' unless array.is_a? Array
  return 'Second argument must be an integer' unless index.is_a? Integer
  return 'Index must must not be negative' unless index >= 0
  return 'Index is not in array' if array[index].nil?

  return [array[..index], array[(index + 1)..]]
end
