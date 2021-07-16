class Gram
  attr_accessor(:phrase1, :phrase2)

  def initialize(phrase1, phrase2)
    @phrase1 = phrase1
    @phrase2 = phrase2
  end

  def split_and_sort
    @phrase1 = @phrase1.split("").sort!()
    @phrase2 = @phrase2.split("").sort!()
  end

  def ana_anti_gram?()
    @phrase1 === @phrase2
  end
end
