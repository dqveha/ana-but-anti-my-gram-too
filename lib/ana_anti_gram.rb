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
    if (@phrase1 =~ /[aeiouy]/i) && (@phrase2 =~ /[aeiouy]/i)
      split_sort_case_remove()
        if anagram?() === true
            return "Congratulations! You found an anagram!"
        else
            antigram?()
        end
    else
      return "Need to input actual words in both phrases."
    end
  end

  def antigram?()
    if (@phrase1 - @phrase2) === @phrase1
      return "These words have no letter matches and are antigrams."
    else
      matching_letters = (@phrase1 & @phrase2).flat_map { |a| [a]*[@phrase1.count(a), @phrase2.count(a)].min}
      return "Neither anagram or antigram. However, these phrases have #{matching_letters.length} letter(s) in common: #{matching_letters}."
    end
  end
end
