require('rspec')
require('ana_anti_gram')
require('pry')

describe('ana_anti_gram?') do
  it("will return the appropriate boolean case if the two arguments are the same or not ") do
    anagram1 = Gram.new("hello", "hello")
    anagram2 = Gram.new("hello", "ello")
    expect(anagram1.anagram?).to(eq(true))
    expect(anagram2.anagram?).to(eq(false))
  end

  it("will lowercase, split, and sort the phrases as an array") do
    anagram = Gram.new("HELLO", "ELLO")
    anagram.split_sort_case()
    expect(anagram.phrase1).to(eq(["e","h","l","l","o"]))
    expect(anagram.phrase2).to(eq(["e","l","l","o"]))
  end

  it("will check if phrase has vowels; if phrase has vowels then it checks for anagram") do
    anagram1 = Gram.new("HLL", "LL")
    anagram2 = Gram.new("HELLO", "ELLOH")
    anagram3 = Gram.new("HELLO", "LLH")
    expect(anagram1.check_vowels?).to(eq("Need to input actual words"))
    expect(anagram2.check_vowels?).to(eq(true))
    expect(anagram3.check_vowels?).to(eq("Need to input actual words"))
  end

  it("will check if phrase have any matching letters; if not then it will say they are antigrams") do
    anagram1 = Gram.new("HI", "BYE")
    anagram2 = Gram.new("HE", "BYE")
    anagram1.split_sort_case()
    anagram2.split_sort_case()
    expect(anagram1.antigram?).to(eq("These words have no letter matches and are antigrams."))
    expect(anagram2.antigram?).to(eq("Neither anagram or antigram. Please try again."))
  end
end