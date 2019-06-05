require 'pry'

class String

  def sentence?
      return true if self.split("")[-1] == "."
      
      return false
  end

  def question?

  end

  def exclamation?

  end

  def count_sentences

  end
end