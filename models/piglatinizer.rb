class PigLatinizer

  def piglatinize(word)
    vowels = ["a","e","i","o","u"]
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

