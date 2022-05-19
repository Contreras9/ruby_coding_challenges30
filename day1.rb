# Problem 1 - Given an array, count how many items are greater than 5?

def items_greater_than number, array
   count = 0
   for item in array
      if item > 5
         count = count +1
      end
   end
   return count
end

array = [17, 6, 3, 7, 9, 1]

puts items_greater_than(5, array)

# ruby way
def items_greater_than_num number, array
   array.count do |item|
      item > 5
   end
end

puts items_greater_than_num(5, array)