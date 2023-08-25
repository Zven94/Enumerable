module MyEnumerable
  def all?(&block)
    each { |item| return false unless block[item] }
    true
  end

  def any?(&block)
    each { |item| return true if block[item] }
    false
  end

  ## def filter may not work

  def filter(&block)
    select(&block)
  end
end