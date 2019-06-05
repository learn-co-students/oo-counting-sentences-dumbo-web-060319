require 'pry'

class String
  # helper function
  # takes one argument, returns true if self ends in that argument.

  def end_in?(mark)
    return true if self.split("")[-1] == mark
      
    return false
  end

  def sentence?
    end_in?(".")
  end

  def question?
    end_in?("?")
  end

  def exclamation?
    end_in?("!")
  end

  def count_sentences

  end
end