require 'pry'
class PigLatinizer

  def piglatinize(input)
    if input.match(/\s/) == nil
      word(input)
    else
      input.split(" ")
    binding.pry
  end
  
  def word(input)
    if word.downcase.match(/\A[aeiou]/) == nil
      letters = word.slice!(/\A[^aeiou]*/)
      letters << "ay"
      word << letters
    else
      word << "way"
    end
    word
  end
  
  def sentence(input)
  end
end

