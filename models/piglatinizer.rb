require 'pry'
class PigLatinizer

  def piglatinize(input)
    if input.match(/\s/) == nil
      one_word(input)
    else
      sentence = []
      words = input.split(" ")
      words.each do |i| 
        sentence << word(i)
      end
      sentence.join(" ")
  end
  
  def one_word(input)
    if word.downcase.match(/\A[aeiou]/) == nil
      letters = word.slice!(/\A[^aeiou]*/)
      letters << "ay"
      word << letters
    else
      word << "way"
    end
    word
  end
end

