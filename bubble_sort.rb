def bubble_sort(number_list)
  range = number_list.length - 1
  swapped = false
  for i in 0...range
    if number_list[i] > number_list[i + 1]
      number_list[i + 1], number_list[i] = number_list[i], number_list[i + 1]
      swapped = true
    end
  end
  new_list = number_list
  if swapped
    bubble_sort(new_list)
  else
    puts "The ordered list you input is #{new_list}"
  end
end

bubble_sort([4,3,78,2,0,2])