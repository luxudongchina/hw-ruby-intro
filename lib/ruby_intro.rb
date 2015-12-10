# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
  
    
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort.last(2).reduce(0,:+)

end

def sum_to_n? arr, n
 # YOUR CODE HERE
  if arr.empty? && n==0
    return true
  end
  
  arr.each_index do |i|
    j=arr[i]
    arr.delete_at(i)
    if arr.include?(n-j) 
      return true
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
 "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s=~ /^[^[aeiou]\W]/i    
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s=~ /^[01]*(00)$|^0$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    raise ArgumentError if isbn.empty? || price<=0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string
    format("$%.2f",@price)
  end
  attr_accessor:isbn
  attr_accessor:price
end
