# Factorial numbers

def factorial_v1 number
   result = number
   while number > 1
      result = result * (number - 1)
      number = number - 1
   end
   puts "number #{number}"
   return result
end

def factorial_v2 number
   result = number
   (1..(number - 1)).each do |item|
      result = result * item
   end
   puts "number #{number}"
   return result
end

puts factorial_v1(5)
puts factorial_v2(5)