# PSEUDOCODE
# -Turn name into an array
# - Reverse the items in the array
# - List each letter in the names
# - For each letter in 'aeiou' letter.next
# - For each letter in 'bcdfghjklmnpqrstvxyz' letter.next

real_name = "Felicia Torres"
name_array = real_name.split(' ')
last_first = name_array.reverse
last = last_first[0].chars
first = last_first[1].chars
scrambled_last = []
last.each {|l| scrambled_last << l.next}
first.each {|l| puts l.next}
