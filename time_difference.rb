def my_min(arr) # O(n)
    smallest_num = arr.first    #O(1) = 1
    arr.each do |ele1|  #O(n)
        if ele1 < smallest_num  #O(1) = 1
            smallest_num = ele1
        end
    end
    smallest_num
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min(list)


def sub_sum(arr) #n^2
    arr1 = []# 1
    (0...arr.length).each do |i| #n
        (i...arr.length).each do |j|#n
            arr1 << arr[i..j].sum # 1
        end
    end
    arr1.max
end
list = list = [-5, -1, -3]

# p sub_sum(list)


def sub_sum_p2(arr) #[5, 3, -7] ##n
   max_sum = arr.min    #5 ##1

   temp_sum = 0 ##1

   arr.each do |n| # 3 ##n
        temp_sum += n   #temp_sum = 8   ## 1
        max_sum = temp_sum if temp_sum > max_sum    #max_sum = 5  ##1
   end

   return max_sum
end

# list = [-5, -1, -3]
list = [5, 3, -7]
p sub_sum(list)