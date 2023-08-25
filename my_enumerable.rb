# frozen_string_literal: true

# this module is used to add the methods #all?, #any?, and #filter to the MyList class
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
    result = []
    each { |item| result << item if block.call(item) }
    result
  end
end
