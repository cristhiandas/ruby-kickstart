# Write a method, spiral_access, that takes a 2d square array (an array of arrays)
# and a block, and calls the block for each of the elements, in spiral order.
#
# HINT: This method is probably best sovled recursively
#
# Example:
# two_d = [
#   [ 1,  2,  3,  4, 5],
#   [16, 17, 18, 19, 6],
#   [15, 24, 25, 20, 7],
#   [14, 23, 22, 21, 8],
#   [13, 12, 11, 10, 9],
# ]
# order = []
# spiral_access two_d do |i|
#   order << i
# end
# order # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25]

def spiral_access(array,itr = 0, &block)
  max_high = array.length - 1
  max_length = array.first.length

#Base
  return if max_high/2 < iteration || max_length/2 < iteration

#for the top row, this calls [0][0], [0][1] .... [0][max_high-iteration] to the block
iteration.upto max_length-iteration do |value|
  block.call array[iteration][value]
end

# right column, this calls [1][max_length-iteration], [2][max_length-iteration]...[max_high-iteration][max_length-iteration]
(iteration + 1).upto max_high-iteration do |y|
  block.call arrays[y][max_length-iteration]
end

# bottom row
(max_length - 1 - iteration).downto iteration do |x|
  block.call arrays[max_high-iteration][x]
end

# left column
(max_high - 1 - iteration).downto iteration+1 do |y|
  block.call arrays[y][iteration]
end

# recursive step
spiral_access arrays, iteration+1, &block
end
