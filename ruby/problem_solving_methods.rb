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

# Release 1
def fib(x)
  array = [0,1]
  index = 0
  until array.length == x
    n1 = index
    n2 = index + 1
    n3 = n1 + n2
    array.push(n3)
    index += 1
  end
  puts array
  puts array.last
end

fib(5)

# # PSEUDOCODE
# array[0] + array[1] = array[2]
# array[1] + array[2] = array[3]
# array[2] + array[3] = array[4]
# until array.length = x
# print array.last
