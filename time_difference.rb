# def my_min(arr) # O(n)
#     smallest_num = arr.first    #O(1) = 1
#     arr.each do |ele1|  #O(n)
#         if ele1 < smallest_num  #O(1) = 1
#             smallest_num = ele1
#         end
#     end
#     smallest_num
# end

# # list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# # p my_min(list)


# def sub_sum(arr) #n^2
#     arr1 = []# 1
#     (0...arr.length).each do |i| #n
#         (i...arr.length).each do |j|#n
#             arr1 << arr[i..j].sum # 1
#         end
#     end
#     arr1.max
# end
# # list = list = [-5, -1, -3]

# # p sub_sum(list)


def sub_sum_p2(arr) #[2,3,-6,7,-6,7]    
   temp_sum = 0 # 8
   max_sum = arr.min    #8
   arr.each do |n|      #7
        temp_sum = 0 if temp_sum < 0    
        temp_sum += n   #
        max_sum = temp_sum if temp_sum > max_sum    #
   end

   return max_sum
end

# list = [-5, -1, -3]
# list = [5, 3, -7]
list = [2,3,-6,7,-6,7]
p sub_sum_p2(list)