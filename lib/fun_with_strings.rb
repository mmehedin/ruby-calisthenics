module FunWithStrings
  def palindrome?
    # your code here
    self.downcase!
    @s= self.gsub(/[^a-zA-Z]/, '')
    #self.match(/[a-zA-Z]/)
    @s==@s.reverse
  end
  
  def count_words
    # your code here
    #s.split.size
    @s =self.gsub(/[^a-zA-Z\s]/, '')
    hash = Hash.new(0)
    array=@s.downcase.split(' ')
    array.each {|word| hash[word]+=1}
    hash
   # numb = WordsCounted::Counter.new(self)
    #numb.word_count
  end
  def anagram_groups
    # your code here
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
=begin
def initialize(s)
    @s = s
    s.palindrome?(@s)
  end;
=end 

end

