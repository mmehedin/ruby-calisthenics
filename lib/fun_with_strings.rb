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
    
    array_word=[] #the array containing individual words
    @s = self.gsub(/[^a-zA-Z\s]/, '')
    array_word = @s.downcase.split(' ')
    array_word.uniq!
    if array_word.empty?
      return array_word # return the empty array as promised
    else
      array_anagram =Array.new([])
      
      while !array_word.empty? 
        array_word_temp =Array.new(array_word)
        #array_word_temp=array_word
        word=array_word[0]
        temp = Array.new()
        temp.push(word)
        while !array_word_temp.empty?
        x=array_word_temp[0]
          if (x.split(//).sort == word.split(//).sort) && (x!=word) #test using the current word as a regex character sequence
            temp.push(x)
            array_word.delete(x)
          end
          array_word_temp.delete(x)
  
        end
          array_word.delete(word)
          array_anagram.push(temp)
      end
      
    end
    array_anagram #returning the final array
  end
end


#test using regex. not working with repeating letters
def anagram_groups_regex
# your code here

  array_word=[] #the array containing individual words
  @s = self.gsub(/[^a-zA-Z\s]/, '')
  array_word = @s.downcase.split(' ')
  if array_word.empty?
      return array_word # return the empty array as promised
  else
    array_anagram =Array.new([[]])
    array_word.each do |word|
      temp = Array.new()
      array_word.each do |x|
          if !(word =~ /[^#{x}]/) && !(x =~ /[^#{word}]/) #test using the current word as a regex character sequence
              temp.push(x)
          end
      end
      array_anagram.push(temp)
    end

  end
array_anagram #returning the final array

end



# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end

#=begin
#print String.new("scream cars for four scar creams").anagram_groups
#puts
#print String.new("cars for potatoes racs four scar creams scream").anagram_groups
#puts
##print String.new("rats tars star").anagram_groups
#puts
#print String.new("saas ass sa as aas aass").anagram_groups
#=end