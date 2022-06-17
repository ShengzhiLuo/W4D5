def first_anagram?(str1,str2) #n
    str1.chars.permutation.to_a.map{|arr| arr.join("")}.include?(str2)
end

# p first_anagram?("gizmo", "sally")    #=> false
# p first_anagram?("elvis", "lives")    #=> true


def second_anagram?(str1,str2)
    arr1 = str1.chars
    arr2 = str2.chars
    arr1.each do |ele|
        idx = arr2.find_index(ele)
        return false if !idx
        arr2.delete_at(idx) 
        
    end
    arr2.empty?
end
# p second_anagram?("gizmo", "sally")    #=> false
# p second_anagram?("elvis", "lives")    #=> true


def third_anagrams?(str1,str2)
    arr1 = str1.chars
    arr2 = str2.chars

    arr1.sort == arr2.sort
end

# p third_anagrams?("gizmo", "sally")    #=> false
# p third_anagrams?("elvis", "lives")    #=> true

def fourth_anagram?(str1,str2)

    hash1 = Hash.new{0}
    hash2 = Hash.new{0}

    str1.each_char do |char|
        hash1[char] += 1
    end
    str2.each_char do |char|
        hash2[char] += 1
    end
    hash1 == hash2

end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true
