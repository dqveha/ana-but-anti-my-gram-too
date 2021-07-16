require('rspec')
require('ana_anti_gram')
require('pry')

describe('ana_anti_gram?') do
  it("will return the appropriate boolean case if the two arguments are the same or not ") do
    anagram1 = Gram.new("hello", "hello")
    anagram2 = Gram.new("hello", "ello")
    expect(anagram1.ana_anti_gram?).to(eq(true))
    expect(anagram2.ana_anti_gram?).to(eq(false))
  end

  it("will split and sort the phrases as an array") do
    anagram = Gram.new("hello", "ello")
    anagram.split_and_sort()
    expect(anagram.phrase1).to(eq(["e","h","l","l","o"]))
    expect(anagram.phrase2).to(eq(["e","l","l","o"]))
  end
end