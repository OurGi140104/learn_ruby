string_of_digits ='0123456789'
puts ("Enter c:")
input_string = gets.chomp

def is_valid_digit?(string_of_digits, char)
  string_of_digits.include?(char)
end

# while index < a.size
#   puts(a[index])

#   # Compare a[index] with c

#   if(a[index]) == c
#     c_in_a = true
#     break
#   end

#   index += 1
# end

def is_valid_number?(string_of_digits, input_string)

  # input_string is a string, can be 1 or multiple characters
  # Go from the beginning of input_string to the end

  input_string.each do |char|
    digit_valid = is_valid_digit?(string_of_digits, char)
    return false if !digit_valid
  end

  true
end

valid_number = is_valid_number?(string_of_digits, input_string)
puts("#{input_string} is valid number : #{valid_number}")
