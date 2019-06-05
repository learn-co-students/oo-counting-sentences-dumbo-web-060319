require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
	if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
  	array_of_words = self.split(/[.!?]/)
  	count = 0
    array_of_words.each {|word|
      if word != ""
      	count += 1
      end
    }
    count
  end
end