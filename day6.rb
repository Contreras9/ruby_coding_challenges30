# Given a number N
# The Factorial of N is the product of all intergers less than or equal to the number N

def factorial number
   result = number
   while number > 1
      result = result * (number - 1)
      number = number - 1
   end
   return result
end

puts factorial(3)