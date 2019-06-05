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
    # count
    count = 0
    # Array that holds the different sentence endings
    periodt = [".", "?", "!"]
    # binding.pry
    puts self
    self.split("").each_cons(3) { |prev_char, char, next_char| count += 1 if periodt.include?(next_char) and !periodt.include?(char) }

    count
  end
end