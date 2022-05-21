# Prime Algorithm Recursively

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def prime_numbers array
   array.count do |item|
      is_prime_number_recursion(item, item - 1)
   end
end

def is_prime_number_recursion(item, number)
   return false if item == 1
   return true if number == 1
   is_prime_number_recursion(item, number - 1) if item % number != 0
end

puts prime_numbers(array)