dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


  #break substring into array of words, cut out special characters and numbers and whitespace
  #iterate through array and find whether each word is included in the dictionary
  #need to create


def substrings(string, dictionary)
  found_words = Hash.new(0)

  words = string.downcase.gsub(/[^a-z\s]/, '').split(' ') #cut non-alphanumberic chars from string and put words into array

  words.each do |word|
    dictionary.each do |dword|
      if word.include?(dword)
        found_words[dword] += 1
      end
    end
  end

  puts found_words
end

substrings("I am low and on the downlow, sitting.", dictionary)