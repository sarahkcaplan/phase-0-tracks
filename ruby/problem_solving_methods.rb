# # Release 0
# def search_array(array, value)
#   index = 0
#   new_array = []
#   while index < array.length
#     if array[index] == value
#       new_array.push(value)
#       break
#     else
#       new_array.push(value)
#       index += 1
#     end
#   end
#   puts new_array.length - 1
# end

# array = [2,3,4,6,5,6]
# value = 5
# search_array(array, value)

# # Release 1
# def fib(x)
#   array = [0,1]
#   index = 0
#   until array.length == x
#     n1 = array[index]
#     n2 = array[index + 1]
#     n3 = n1 + n2
#     array.push(n3)
#     index += 1
#   end
#   last = array.pop
#   puts last
#   if last == 218922995834555169026
#     puts "SUCCESS"
#   end
# end

# fib(100)

# # # PSEUDOCODE
# # array[0] + array[1] = array[2]
# # array[1] + array[2] = array[3]
# # array[2] + array[3] = array[4]
# # until array.length = x
# # print array.last

# # Release 2
# def bub_sort(array)
#   p "1"
#   index = 0
#   item = 0
#   p "2"
#   while index < array.length
#     p "3"
#     first = array[index]
#     second = array[index+1]
#       if first > second
#         p first
#         p second
#         low = array[index+1]
#         high = array[index]
#         p low
#         p high
#         array[index] = low
#         array[index+1] = high
#         p array
#         index += 1
#         break
#       else
#         index += 1
#       end
#   end
# end

# bub_sort([3,6,1,8,4,2])

def funky_town(array)
  l = 1
  pairs = 0
  while l != array.length
    pairs += (array.length-l)
    l += 1
    p pairs
  end
end

funky_town([1,2,3,4,5,6,7,8,9,10,11,12])

# #PSEUDOCODE
# (buble sort)
# - Start with an array of numbers
# - Starting at the beginning of the array, compare the first two numbers to one another
# -If the first number is greater than the second number, put the first number in the second number's position and put the first number in the second number's position.
# -Next advance one position on the array.
# -Next compare these two numbers.
# -Follow the same logic as step #3
# -Continue along the array until the number in the -1st position is considered and sorted.
# -Start from the beginning of the array and follow steps 2-5 until the number in the "second position" is -2 position is considered sorted (-1-1).
# -Follow steps 2-7 until the numbers in position 0 and 1 are considered sorted.

