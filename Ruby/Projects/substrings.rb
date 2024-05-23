def substrings(string, dictionary)
  # iterate through the dictionary and check if there are any matching keys
  words = string.downcase.split(" ")
  word_counts = Hash.new(0)

  words.each do |word|
    dictionary.each do |entry|
      if word.include?(entry)
        puts "match with #{word} found at dictionary entry: #{entry}."
      end
    end
  end

  puts word_counts
end

dictionary = ["below", "down", "go", "going", "horn", "how", 
  "howdy", "it", "i", "low", "own", "part", "partner", "sit" ]

substrings("below I go", dictionary)
=begin

to convert a string to a symbol, use .symbol_keys

string_hash = {
  :bird => 3,
  :word => 1,
  :turd => 2,
  :birds => 1
}

# Let's try using .each_with_object since it is more efficient because it doesn't create an intermediate array.

string_hash.each do |key, value|
  puts "Key: #{key}, Value: #{value}"
end

puts dictionary
=end




