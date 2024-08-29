dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(target_substring, source_dictionary)

  #go through each string in the array
  #if every letter in the source_dictionary string 
  #is contained within the target_substring
  #push string to hash and return the hash with a count

=begin 
  final_hash = []


  
  source_dictionary.each do |word|
    if target_substring.include?(word)
      final_array.push(word)
    end
  end

  return final_array.each_with_object(Hash.new(0)) {|word, acc| acc[word] += 1}

=end 

final_count = source_dictionary.each_with_object(Hash.new(0)) do |word, acc| 
  target_substring.split(' ').each do |sub_word|
    if sub_word.downcase.include?(word)
      acc[word] += 1
    end
  end
end

return final_count

end






substrings("below", dictionary)
#=> { "below" => 1, "low" => 1 }

substrings("Howdy partner, sit down! How's it going?", dictionary)
#=> { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

