class Gram
  attr_accessor(:phrase1, :phrase2)

  def initialize(phrase1, phrase2)
    @phrase1 = phrase1
    @phrase2 = phrase2
  end

  
  def ana_anti_gram?()
    @phrase1 === @phrase2
  end

  def split_sort_case()
    @phrase1 = @phrase1.downcase().split("").sort!()
    @phrase2 = @phrase2.downcase().split("").sort!()
  end

  def check_vowels?()
    if (@phrase1 =~ /[aeiou]/i) && (@phrase2 =~ /[aeiou]/i)
      split_sort_case()
      ana_anti_gram?()
    else
      return "Need to input actual words"
    end
  end
end
