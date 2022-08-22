def password_generator(length, has_special_characters)
  # TO DO: Write a method that generates a password of the specified length.
  return 'Your password must be at least 8 characters long' if length < 8

  numbers = ('0'..'9').to_a
  lowers = ('a'..'z').to_a
  uppers = ('A'..'Z').to_a
  specials = ['@', '?', '!', '#', '$', '€', '%', '&', '/', '+', '-', '*']
  all_without_specials = numbers + lowers + uppers
  all_with_specials = all_without_specials + specials

  password_array = []
  while password_array.length < length
    if password_array.length.zero?
      password_array.push(numbers.sample)
    elsif password_array.length == 1
      password_array.push(lowers.sample)
    elsif password_array.length == 2
      password_array.push(uppers.sample)
    elsif password_array.length.between?(3, 5) && has_special_characters
      password_array.push(specials.sample)
    elsif has_special_characters
      password_array.push(all_with_specials.sample)
    else
      password_array.push(all_without_specials.sample)
    end
  end

  return password_array.shuffle.join
end
