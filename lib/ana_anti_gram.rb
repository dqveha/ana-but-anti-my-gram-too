class Gram
  attr_accessor(:phrase1, :phrase2)

  def initialize(phrase1, phrase2)
    @phrase1 = phrase1
    @phrase2 = phrase2
  end

  
  def anagram?()
    @phrase1 === @phrase2
  end

  def split_sort_case_remove()
    @phrase1 = @phrase1.downcase().gsub(/\W/, "").split("").sort!()
    @phrase2 = @phrase2.downcase().gsub(/\W/, "").split("").sort!()
  end

  def check_vowels?()
    if (@phrase1 =~ /[aeiou]/i) && (@phrase2 =~ /[aeiou]/i)
      split_sort_case_remove()
        if anagram?() === true
            return "Congratulations! You found an anagram!"
        else
            antigram?()
        end
    else
      return "Need to input actual words."
    end
  end

  def antigram?()
    if (@phrase1 - @phrase2) === @phrase1
      return "These words have no letter matches and are antigrams."
    else
      # WIP: Further exploration on matching letters when phrases aren't anagrams
      return "Neither anagram or antigram. Please try again."
    end
  end
end
