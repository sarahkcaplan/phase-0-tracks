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
def bub_sort(array)
  l = 1
  pairs = 0
  while l != array.length
    pairs += (array.length-l)
    l += 1
  end
  count = 0
  while count < pairs
      index = 0
      n = 0
      while index < array.length - n
        if array[index] > array[index+1]
          low = array[index+1]
          high = array[index]
          array[index] = low
          array[index+1] = high
          index += 1
          count += 1
        else
          index += 1
          count += 1
        end
      end
      n += 1
      puts array

  end
end

bub_sort([3,6,1,8,4,2])


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

#PSEUDOCODE attempt # 2
#Counted total pairs of array length = l and found that the total number of pairs = (l-1)+(l-2)+(l-3)+(l-4) and so on until the integer was the same as the length of the array

# in code this is:
# def pair_count(array)
#   l = 1
#   pairs = 0
#   while l != array.length
#     pairs += (array.length-l)
#     l += 1
#   end
#   return pairs
# end