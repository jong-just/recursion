rand_array = [73, 91, 71, 27, 85, 96, 5, 40]

big_array = [73, 91, 71, 27, 85, 96, 5, 40, 17, 44, 47,
              89, 63, 14, 77, 59, 51, 26, 45, 50, 9, 7, 
              52, 33, 72, 38, 94, 74, 95, 29, 20, 4, 2, 
              54, 67, 75, 53, 69, 98, 62, 60, 64]

module MySorts
  def merge_sort(array)
    # base case
    if array.size < 2
      return array
    end

    # halving the arrays
    half_point = (array.size/2)
    temp_array_left = array[0..half_point-1]
    temp_array_right = array[(half_point)..array.size-1]

    # recursive call
    sorted_array_left = merge_sort(temp_array_left)
    sorted_array_right = merge_sort(temp_array_right)
    puts "Left: #{temp_array_left}"
    puts "Right: #{temp_array_right}"


    # merging
    i = 0
    j = 0
    left = sorted_array_left.size
    right = sorted_array_right.size
    temp_array = []
    
    # merge logic
    until j == right && i == left do
      puts "Comparing || Left: #{sorted_array_left[i]} Right: #{sorted_array_right[j]}"
      if sorted_array_left[i] == nil
        temp_array << sorted_array_right[j]
        j+=1
      elsif sorted_array_right[j] == nil
        temp_array << sorted_array_left[i]
        i+=1
      elsif sorted_array_left[i] > sorted_array_right[j]
        temp_array << sorted_array_right[j]
        j+=1
      elsif sorted_array_left[i] < sorted_array_right[j]
        temp_array << sorted_array_left[i]
        i+=1
      end
      puts "Outputted Array: #{temp_array} i: #{i} / #{left} j: #{j} / #{right}\n \n"
    end

    return temp_array
  end
end

include MySorts

puts "Sorted: #{merge_sort(big_array)}"