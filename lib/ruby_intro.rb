# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arrsum = 0
  arr.each do |num|
    arrsum += num
  end
  return arrsum
end

my_array = [7, 6, 3, 4, 4]

def max_2_sum arr
  return 0 if (arr[0] == nil) && (arr[1] == nil)
  return arr[0] if (arr[1] == nil)
  
  arr.sort!.reverse!
  return arr[0] + arr[1]
end

#puts max_2_sum(my_array)

def sum_to_n? arr, n
  len = arr.length
  return false if arr.length < 2
  
  for i in 0...len do
    #puts "i = #{i}"
    for j in (i+1)...len do
      #puts "j = #{j}"
      #puts "  i+j == #{arr[i]+arr[j]}"
      return true if ((arr[i]+arr[j]) == n) #turns out I was just checking i+j instead of arr[i]+arr[j] >.<
    end
  end
  return false
end

#puts sum_to_n?(my_array, 14)

# Part 2

def hello(name)
  return "Hello, #{name}"
end

vowelstart = "As"
nostart = "..."
#puts "v == #{'v'.ord}"

def starts_with_consonant? s
  #s = s.chr if s.is_a? Integer #converts Integers to one-character strings via ASCII for funsies
  return false unless s.is_a? String #Check if string
  return false if s.length < 1 #Check if empty
  return false unless (s.chr.ord.between?(65, 90) || s.chr.ord.between?(97, 122)) #Check if starts with letter; Integer.between is inclusive, apparently
  return s.start_with?("A", "a", "E", "e", "I", "i", "O", "o", "U", "u") ? false : true
  #c = s.index 0
  #puts c
  #return false if c.match(/[A-Za-z]/)
  #return if s.index 0 =~ /[aeiouAEIOU]/ ? false : true
end

#puts "starts_with_consonant?(\"#{vowelstart}\") == #{starts_with_consonant? vowelstart} == false"
#puts "starts_with_consonant?(\"#{vowelstart.reverse}\") == #{starts_with_consonant? vowelstart.reverse} == true"
#puts "starts_with_consonant?(\"#{nostart}\") == #{starts_with_consonant? nostart} == false"
#puts "starts_with_consonant?(\"#{118.chr}\") == #{starts_with_consonant? 118.chr} == true"
#puts "starts_with_consonant?(\"#{""}\") == #{starts_with_consonant? ""} == false"
#puts "starts_with_consonant?(\"#{122.chr}\") == #{starts_with_consonant?(122.chr)} == true" #check range... Integer.between is inclusive, apparently


def binary_multiple_of_4? s
  return false unless s.is_a? String #check if String
  return false if s.length < 1
  return false if s =~ /[^01]/
  
  n = s.to_i(2)
  puts n.to_s(2)
  return n % 4 == 0 ? true : false
end

# Part 3

class BookInStock
  attr_accessor :isbn
  attr_accessor :price
  def initialize(isbn, price)
    if (isbn == '' || price <= 0)
      puts "ISBN is empty or price is less than or equal to 0."
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  def price_as_string #Pretty hacky but it passes the test cases, so...
    if price.to_s.index('.') == nil
      return "$#{price}.00"
    elsif (price.to_s.length - price.to_s.index('.')) == 2
      return "$#{price}0"
    else
      return "$#{price}"
    end
  end
end

hhgtg = BookInStock.new("978-1400052929", 11.4)
puts hhgtg.isbn
puts hhgtg.price_as_string