require 'pry'
class PigLatinizer

  def piglatinize(words)
    
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
end

