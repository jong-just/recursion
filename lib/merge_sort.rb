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
      p array
      return
    end
    half_point = (array.size/2)
    temp_array_left = array[0..half_point-1]
    temp_array_right = array[(half_point)..array.size-1]
    merge_sort(temp_array_left)
    merge_sort(temp_array_right)


    # p temp_array_left, temp_array_right
  end
end

include MySorts

merge_sort(rand_array)