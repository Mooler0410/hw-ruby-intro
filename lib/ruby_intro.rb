# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  return arr.sum()
end

def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    new_arr = arr.sort {|a,b| b <=> a}
    return new_arr[0] + new_arr[1]
  end
end

def sum_to_n? arr, n
  if arr.length < 2
    return false
  else
    for i in 0..arr.length-1
      for j in i+1..arr.length-1
        if (arr[i] + arr[j]) == n
          return true
        end
      end
    end 
    return false
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant? s
  return s =~ /\A[b-df-hj-np-tv-z]/i 
end

def binary_multiple_of_4? s
  return s =~ /\A([01]*00|0)\Z/
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn == '' or price <= 0
      raise(ArgumentError)
    else
      @isbn = isbn
      @price = price
    end  
  end
  attr_accessor :isbn
  attr_accessor :price
  def price_as_string()
    return "$"+"%.2f"%@price
  end
end
