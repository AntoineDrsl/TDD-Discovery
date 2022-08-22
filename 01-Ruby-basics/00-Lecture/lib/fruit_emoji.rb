# TO DO: Write a method which takes a string as an argument and returns:
# - 🍎, 🍊, 🍌, 🍑 when those fruits are prompted
# - The message "Sorry, I don't know that fruit" for other inputs

def fruit_emoji(fruit)
  return '🍎' if fruit == 'apple'
  return '🍊' if fruit == 'orange'
  return '🍌' if fruit == 'banana'
  return '🍑' if fruit == 'peach'
  return "Sorry, I don't know that fruit"
end

# ADVANCED: Refactor it with inline conditions
