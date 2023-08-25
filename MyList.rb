require "my_enumerable"

class MyList
  include MyEnumerable
  def initialize (arr)
    @list = arr
  end
  
end

list =  MyList.new([1,2,3,4])
