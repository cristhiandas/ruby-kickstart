# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(array)
  comp = ''
  num = 0
array.each do |value|
  if value == comp && num == 1
    return true
    elsif value == comp
      num = 1
    else
      comp = value
      num = 0
  end
end
  false
end
