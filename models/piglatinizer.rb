require 'pry'
class PigLatinizer

  def piglatinize(input)
    if words.match(/\s/) == nil
    if word.downcase.match(/\A[aeiou]/) == nil
      letters = word.slice!(/\A[^aeiou]*/)
      letters << "ay"
      word << letters
    else
      word << "way"
    end
    word
    binding.pry
  end
  
  def word(input)
  end
  
  def sentence(input)
  end
end

