arr =  [2,3,4,5,3,2,5,3,2,3,4,1,2,7,7,9,9,8,7,6,8,9,6]

def avg_price(arr,num)
   averages = []
   temp_sum = 0
   if arr.nil? || arr.length < num 
      return nil
   end

   for i in 0..num - 1 do
      temp_sum += arr[i]
   end

   averages << temp_sum / num.to_f

   for i in num..arr.length - 1 do
      temp_sum = temp_sum - arr[i - num] + arr[i]
      averages << temp_sum / num.to_f
   end
   averages
end

puts avg_price(arr, 3)