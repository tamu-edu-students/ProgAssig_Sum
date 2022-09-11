# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  for i in arr
    sum = sum + i
  end
  return sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  sum = 0
  arr_len = arr.size
  if arr_len == 0
	  return sum
  elsif arr_len == 1
	  return sum = arr[0]
  else
	  arr.sort!
	  sum = arr[arr_len-2] + arr[arr_len-1]
	  return sum
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  arr_len = arr.length #length of an array
  if arr_len > 1
    for i in 0...arr_len
      for j in i+1...arr_len
        if number == arr[i] + arr[j]
          return true
        end
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  s = "Hello, "
  return s + name
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  val = /\A(?i:[b-df-hj-np-tv-z])/.match(string)
  if val != nil
	  return true
  else
	  return false
  end
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  if string.length > 1
    if nil != /[^01]/.match(string)
      return false
    else
      if nil != /0{2}$/.match(string)
        return true
      end
    end
  elsif string == "0"
	  return true
  else
	  return false
  end
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  #constructor

  def initialize(i,p)
    if i.length == 0 || p <= 0
      raise ArgumentError
    end
    @isbn = i
    @price = p
    def price_as_string
      @price = "$%0.2f" % [@price]
    end
  end

  #getters
  def isbn
	  @isbn
  end

  def price
	  @price
  end

  #setters
  def isbn=(value)
	  @isbn = value
  end

  def price=(value)
	  @price = value
  end
end
