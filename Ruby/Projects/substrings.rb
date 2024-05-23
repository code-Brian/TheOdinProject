def find_repeated_strings(string, string_array)
  # some logic here af
end

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
