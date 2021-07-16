class Gram
  attr_accessor(:phrase1, :phrase2)

  def initialize(phrase1, phrase2)
    @phrase1 = phrase1
    @phrase2 = phrase2
  end

  def split_and_sort
    return
  end

  def ana_anti_gram?()
    @phrase1 === @phrase2
  end
end
