# base case is length of array < 2
# merge_sort
# if n < 2
#   return
# 
rand_array = [73, 91, 71, 27, 85, 96, 5, 40]

temp_array = [73, 91, 71, 27, 85, 96, 5, 40, 17, 44, 47,
              89, 63, 14, 77, 59, 51, 26, 45, 50, 9, 7, 
              52, 33, 72, 38, 94, 74, 95, 29, 20, 4, 2, 
              54, 67, 75, 53, 69, 98, 62, 60, 64]

module MySorts
  def merge_sort(array)
    if array.size < 2
      # p array
      return
    end

    # halving the arrays
    half_point = (array.size/2)
    temp_array_left = array[0..half_point-1]
    temp_array_right = array[(half_point)..array.size-1]

    # recursive call
    p merge_sort(temp_array_left)
    p merge_sort(temp_array_right)
    puts "Left: #{temp_array_left}"
    puts "Right: #{temp_array_right}"


    # merging?
    i = 0
    j = 0
    left = temp_array_left.size
    right = temp_array_right.size
    temp_array = []

    until j == right && i == left do
      puts "Comparing || Left: #{temp_array_left[i]} Right: #{temp_array_right[j]}"
      if temp_array_left[i] == nil
        temp_array << temp_array_right[j]
        j+=1
      elsif temp_array_right[j] == nil
        temp_array << temp_array_left[i]
        i+=1
      elsif temp_array_left[i] > temp_array_right[j]
        temp_array << temp_array_right[j]
        j+=1
      elsif temp_array_left[i] < temp_array_right[j]
        temp_array << temp_array_left[i]
        i+=1
      end
      puts "Outputted Array: #{temp_array} i: #{i} / #{left} j: #{j} / #{right}\n \n"
    end

    return temp_array
  end
end

include MySorts

puts "Sorted: #{merge_sort(rand_array)}"