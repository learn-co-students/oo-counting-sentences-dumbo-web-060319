require 'pry'

class String

  def sentence?
    return true if self[-1]=="."
    false
  end

  def question?
    return true if self[-1]=="?"
    false
  end

  def exclamation?
    return true if self[-1]=="!"
    false
  end

  def count_sentences
    return 0 if self.length==0
    count=0
    
      arr=self.split(".")
      
      arr=arr.select {|el| el!="" }
      
    count+=arr.length
    arr=self.split("?") 
    arr=arr.select {|el| el!="" }
    count+=arr.length-1
    arr=self.split("!")
    arr= arr.select {|el| el!= ""}
    count+=arr.length-1
    return count
  
  end
  
end

