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
      return true if ((arr[i]+arr[j]) == n) #turns out I was just checking i+j for a while instead of arr[i]+arr[j] >.<
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

  #(65...90, 97...122).each do |i|
  return false if s.length < 1
  return false if !(s.chr.ord.between?(64, 91) || s.chr.ord.between?(96, 121))
  return s.start_with?("A", "a", "E", "e", "I", "i", "O", "o", "U", "u") ? false : true #seems to work despite IDE-displayed error
  return false
end

puts "starts_with_consonant?(\"#{vowelstart}\") == #{starts_with_consonant? vowelstart} == false"
puts "starts_with_consonant?(\"#{vowelstart.reverse}\") == #{starts_with_consonant? vowelstart.reverse} == true"
puts "starts_with_consonant?(\"#{nostart}\") == #{starts_with_consonant? nostart} == false"
puts "starts_with_consonant?(\"#{118.chr}\") == #{starts_with_consonant? 118.chr} == true"
puts "starts_with_consonant?(\"#{""}\") == #{starts_with_consonant? ""} == false"

def binary_multiple_of_4? s
  # YOUR CODE HEREru
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
