def substrings(string, dictionary)
  words = string.downcase.split(" ")
  word_counts = Hash.new(0)

  words.each do |word|
    dictionary.each do |entry|
      if word.include?(entry)
        # puts "match with #{word} found at dictionary entry: #{entry}."
        if word_counts.key?(entry)
          word_counts[entry] += 1
        elsif
          word_counts[entry] = 1
        end
      end
    end
  end

  puts word_counts
end

dictionary = ["below", "down", "go", "going", "horn", "how", 
  "howdy", "it", "i", "low", "own", "part", "partner", "sit" ]

substrings("Howdy partner, sit down! How's it going?", dictionary)
