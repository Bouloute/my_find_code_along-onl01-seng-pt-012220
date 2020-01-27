require 'pry'

def my_find(collection)
  i = 0
  while i < collection.length
    thing = yield(collection[i])
    binding.pry
    i = i + 1
  end
end

collection = (1..100).to_a

my_find(collection) do |number|
  puts number
end