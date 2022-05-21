# Problem 2 - Prime Number Algorithm

def prime_numbers array
   prime_count = 0
   for item in array
      is_prime = is_prime(item)

      if is_prime
         prime_count = prime_count + 1
      end
   end
   return prime_count
end

def is_prime item
   return false if item == 1
   number = item - 1
   while number > 1
      if item % number == 0
         return false
         break
      else
         number = number - 1
      end
   end
   return true
end

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts prime_numbers(array)

def prime_numbers2 array
   array.count do |item|
      is_prime2(item)
   end
end

def is_prime2 item
   return false if item == 1
   (2..(item -1)).each do |number|
      if item % number == 0
         return false
      end
   end
   return true
end

puts prime_numbers2(array)

require 'prime'

def prime_numbers3 array
   array.count do |item|
      Prime.prime?(item)
   end
end

puts prime_numbers3(array)