require_relative 'my_enumerable'

# this file initializes the MyList class
class MyList
  include MyEnumerable

  def initialize(arr)
    @list = arr
  end

  def each(&block)
    @list.each(&block)
  end

  def add(num)
    @list << num
  end
end
