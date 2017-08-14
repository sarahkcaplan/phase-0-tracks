# Encrypt
#   -Have a list of letters (the entire alphabet)
#   -In this list, "a"'s index is 0; "z"'s is 25
#   -Given the input word, start at the first character (in index 0)
#   -With that character, return to the list of letters and determine the index of the matching letter in the list of letters.
#   -Now move up (to the right) one index space and note the letter in that space
#     -If the starting letter is "z", the "next" letter should be "a"
#   -Return to the input word and insert the letter retived from the list into the input word at index 0
#   -Now move along the length of the input word repeating the steps above until you have reached end of the input word

# Decrypt
#   -Given the input word (i.e. string), start at the first character (i.e. index 0).
#   -Grab the first character and use .index on the list of letters to deterime the index of the character within the list of letters
#   -Subtract 1 from that index. Save this new index
#   -Return to the input word and replace the character at index 0 with the letter at the new index within the list of letters

def encrypt(word)
  counter = 0
  secret_password = ''
  while counter < word.length
    character = word[counter].next
    secret_password += character
    counter += 1
  end
  puts secret_password
end

puts encrypt("sarah")


# def decrypt(word, alphabet)