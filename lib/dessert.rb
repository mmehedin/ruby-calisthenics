class Dessert
  
  attr_accessor :name
  attr_accessor :calories
  
  def initialize(name, calories)
    # your code her
    @name = name
    @calories = calories
  end

  def healthy?
    # your code here
    @calories<=200? true:false
  end
  
  def delicious?
    # your code here
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor, calories)
    # your code here
    super(flavor, calories)
  end
end

class Cake < Dessert
    def initialize(name, calories)
      super(name, calories)
    end
end

class Apple < Dessert
    def initialize(name, calories)
      super(name, calories)
    end
end

class JellyBean < Dessert
    def initialize(flavor)
      @flavor = flavor
      if @flavor != "licorice"
        super("vanilla jelly bean", 5)
      else
       super(flavor+"jelly bean",5)
     end
    end
    
    def delicious?
      @flavor!="licorice"? true:false
    end
end
