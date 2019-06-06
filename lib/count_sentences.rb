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
    counter = 0
    string_arr = self.split(" ")
    string_arr.each do |word|
      if word.sentence? || word.question? || word.exclamation?
        counter += 1 
      end
    end 
      counter
end

end

#x = "This is a string! It has three sentences. Right?"
#binding.pry