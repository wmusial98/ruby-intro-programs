dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(string_to_check, dictionary)
  user_string = string_to_check.downcase
  word_count = Hash.new(0)
  result = Hash.new(0)
  dictionary.each do |entry|
    word_count = user_string.scan(entry).length
    result[entry] = word_count unless word_count == 0
  end
  p result
end

substrings("Below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)