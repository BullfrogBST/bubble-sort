def bubble_sort(arr)
  #copy arr
  arr_copy = arr.dup
  #loop through every number from zero to arr.length
  for i in 0..arr_copy.length do
    #loop through every item in the copy of arr
    arr_copy.each_with_index do |item, index|
      next_item = arr_copy[index+1]
      #if the current item is greater than the item directly to the right of it, then swap them
      if next_item != nil and item > next_item
        arr_copy[index], arr_copy[index+1] = arr_copy[index+1], arr_copy[index]
      end
    end
  end
  #return the copy of arr
  return arr_copy
end

arr = [7, 16, 4, 1, 9, -6]
puts(bubble_sort(arr))
