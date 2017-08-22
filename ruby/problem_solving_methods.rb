# Release 0
def search_array(array, value)
  index = 0
  new_array = []
  while index < array.length
    if array[index] == value
      new_array.push(value)
      break
    else
      new_array.push(value)
      index += 1
    end
  end
  puts new_array.length - 1
end

array = [2,3,4,6,5,6]
value = 5
search_array(array, value)

