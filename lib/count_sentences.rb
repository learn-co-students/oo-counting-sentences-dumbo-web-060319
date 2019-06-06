require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentences = self.split(/[.!?]/)
    count = 0 
    sentences.each { |sentence| count += 1 unless sentence == "" }
    count
  end
end