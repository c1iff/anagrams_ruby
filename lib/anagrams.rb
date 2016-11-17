class String
  define_method(:anagram) do |user_word|
    sorted_word1 = self.split("").sort().join().downcase()
    sorted_word2 = user_word.split("").sort().join().downcase()
    if sorted_word1 == sorted_word2
      user_word + " is an anagram of " + self
    else
      user_word + " is NOT an anagram of " + self
    end
  end
end
