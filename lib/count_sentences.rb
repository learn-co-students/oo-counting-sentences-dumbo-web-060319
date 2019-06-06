require 'pry'

class String

  def sentence?
    if self.split('')[-1] == "."
      return true
    else
      false
    end
  end

  def question?
    if self.split('')[-1] == "?"
      return true
    else
      false
    end
  end

  def exclamation?
    if self.split('')[-1] == "!"
      return true
    else
      false
    end
end

  def count_sentences
    sent_string = self.split(' ')
    count = 0
    sent_string. each do |word|
      if word.end_with?(".") || word.end_with?("?") || word.end_with?("!")
        count = count + 1
      end
    end
    return count
  end
end 