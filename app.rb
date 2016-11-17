require('sinatra')
require('sinatra/reloader')
require('./lib/anagrams')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get ('/result') do
  @word = params.fetch('word')
  @result1 = (@word).anagram(params.fetch('anagram1'))
  @result2 = (@word).anagram(params.fetch('anagram2'))
  @result3 = (@word).anagram(params.fetch('anagram3'))
  erb(:index)
end
