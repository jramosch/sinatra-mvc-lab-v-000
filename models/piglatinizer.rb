require 'pry'
class PigLatinizer

  def piglatinize(input)
    if input.match(/\s/) == nil
      word(input)
    else
      sentence = []
      words = input.split(" ")
      words.each do |i| 
        sentence << word(i)
      end
      sentence.join(" ")
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

