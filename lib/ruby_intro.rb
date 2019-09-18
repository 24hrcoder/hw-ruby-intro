# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # initialize the total
  total = 0
  for i in arr
    total  = total + i
  end
  return total
end

def max_2_sum arr
  
  # Base method for 0
    if arr.size <= 0
  		return 0
  	end
  # Base method for 1
  	if arr.size == 1
  		return arr[0]
  	end

  # Sort array
    sortedArray = arr.sort
    num1 = sortedArray[-1]
    num2 = sortedArray[-2]
    
  # Get Total
    total = num1 + num2
    
    return total
end

def sum_to_n? arr, n
  #  Base case
  if arr.size <= 1
    return false
  end

  # Iter1 and Iter2 
  for iter1 in 0..arr.length
    for iter2 in 0..arr.length
      if iter1 != iter2
        if (arr[iter1].to_i + arr[iter2].to_i) == n
          return true
        end
      end
    end
  end
  return false

end

# Part 2
def hello(name)
  if name == nil
    return "Hello, "
  end
  return "Hello, " + name.to_s
end


def starts_with_consonant? s
  
  # this cant work for empty
  if (s == '') or (s == nil)
    return false
  end
  
  # break down the string
  s_rep = s.to_s  # returns a string representation of an object
  
  # decrease size
  decreaseSize = s_rep.downcase
  
  # all characters
  charArray = decreaseSize.split('') 
  first = charArray[0]
  
  # Problem
  if (first == 'e') or (first == 'a') or (first == 'i') or (first == 'u') or (first == 'o') 
    return false
  end
  
  # Check first character
  if not (first =~ /[A-Za-z]/)
    return false
  end
  return true
end

def binary_multiple_of_4? s
  return true if s == "0"
  /^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock
  attr_accessor :isbn
	attr_accessor :price

  # initialize the function to checj the isbn
	def initialize(isbn, price)
		raise ArgumentError, 
    
    # report errors that occur here
		"Invalid" if isbn.empty?  or price <= 0
      
    # Assigning
		@isbn = isbn
		@price = price
	end

  # printing the price as a string
	def price_as_string
		format("$%2.2f", @price)
	end
end
