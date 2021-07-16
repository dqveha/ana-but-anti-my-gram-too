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

  it("will lowercase, remove non-word characters, split, and sort the phrases as an array") do
    anagram = Gram.new(" HEL'LO", "EL.LO ")
    anagram.split_sort_case_remove()
    expect(anagram.phrase1).to(eq(["e","h","l","l","o"]))
    expect(anagram.phrase2).to(eq(["e","l","l","o"]))
  end

  it("will check if phrase has vowels; if phrase has vowels then it checks for anagram") do
    anagram1 = Gram.new("HLL", "LL")
    anagram2 = Gram.new("HELLO", "ELLOH")
    anagram3 = Gram.new("HELLO", "LLH")
    expect(anagram1.check_vowels?).to(eq("Need to input actual words."))
    expect(anagram2.check_vowels?).to(eq("Congratulations! You found an anagram!"))
    expect(anagram3.check_vowels?).to(eq("Need to input actual words."))
  end

  it("will check if phrase have any matching letters; if not then it will say they are antigrams") do
    anagram1 = Gram.new("HI", "BYE")
    anagram2 = Gram.new("HE", "BYE")
    anagram1.split_sort_case_remove()
    anagram2.split_sort_case_remove()
    expect(anagram1.antigram?).to(eq("These words have no letter matches and are antigrams."))
    expect(anagram2.antigram?).to(eq("Neither anagram or antigram. Please try again."))
  end

  it("will check if it's an anagram or antigram within check_vowels? method") do
    anagram1 = Gram.new("HI", "BYE")
    anagram2 = Gram.new("HE", "BYE")
    anagram3 = Gram.new("HELLO", "ELLOH")
    expect(anagram1.check_vowels?).to(eq("These words have no letter matches and are antigrams."))
    expect(anagram2.check_vowels?).to(eq("Neither anagram or antigram. Please try again."))
    expect(anagram3.check_vowels?).to(eq("Congratulations! You found an anagram!"))
  end

  it("will check for sentences if it's an anagram or antigram") do
    anagram1 = Gram.new("The Morse Code", "Here come dots!")
    anagram2 = Gram.new("This should fail! Right?", "YEAH, IT BETTER BECAUSE I'M TYPING A LOT OF STUFF IN THIS")
    anagram3 = Gram.new("MGMT MSTRKFRT DWNTWN", "BAND NAMES WITHOUT VOWELS")
    anagram4 = Gram.new("BAND NAMES WITHOUT VOWELS", "MGMT MSTRKFRT DWNTWN")
    anagram5 = Gram.new("What is love?", "ux y z c z")
    expect(anagram1.check_vowels?).to(eq("Congratulations! You found an anagram!"))
    expect(anagram2.check_vowels?).to(eq("Neither anagram or antigram. Please try again."))
    expect(anagram3.check_vowels?).to(eq("Need to input actual words."))
    expect(anagram4.check_vowels?).to(eq("Need to input actual words."))
    expect(anagram5.check_vowels?).to(eq("These words have no letter matches and are antigrams."))
  end
end