require 'pry'
class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def piglatinize
    if text.match(/\s/) == nil
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
  
  def one_word
    if text.downcase.match(/\A[aeiou]/) == nil
      letters = text.slice!(/\A[^aeiou]*/)
      letters << "ay"
      text << letters
    else
      text << "way"
    end
    text
  end
end

