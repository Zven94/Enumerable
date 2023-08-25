module MyEnumerable
  def all?(&block)
    each { |item| return false unless block[item] }
    true
  end

  def any?(&block)
    each { |item| return true if block[item] }
    false
  end

def filter(&block)
    result =[]
    each do |item|
      result << item if block.call(item)
  end
  result
  end
end
