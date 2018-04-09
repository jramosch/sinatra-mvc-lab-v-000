require 'pry'
class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def piglatinize
    if input.match(/\s/) == nil
      one_word(input)
    else
      sentence = []
      words = input.split(" ")
      words.each do |i| 
        sentence << one_word(i)
      end
      sentence.join(" ")
    end
  end
  
  def one_word(word)
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

