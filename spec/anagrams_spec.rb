require('rspec')
require('anagrams')
require('pry')

describe('String#anagrams') do
  it('if user inputs word and 1 anagram and tells you yes or no') do
  expect(("act").anagram("cat")).to(eq("cat is an anagram of act"))
  end
  it('if user inputs word that is not an anagram') do
  expect(("BATMAN").anagram("robin")).to(eq("robin is NOT an anagram of BATMAN"))
  end
  it('when it is a longer word') do
  expect(("silent").anagram("listen")).to(eq("listen is an anagram of silent"))
  end


end
