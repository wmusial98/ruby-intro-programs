def iterator_check (iter, low_range, high_range)
  if (low_range..high_range).include?(iter)
    iter
  else
    iter > high_range ? iter -= 26 : iter += 26
  end
end

puts = "Enter a phrase to cipher and an integer value to cipher"
string = gets.chomp
shift_string = string.strip.bytes

shift_amount = gets.chomp.to_i
if shift_amount == 0 || shift_amount == 26
  p "Warning! The code will appear to not ciphered."
elsif shift_amount > 26
  shift_amount = shift_amount % 26
end

new_string = shift_string.map do |code|
  iter = code + shift_amount
  if code >= 65 && code <= 90
    iter = iterator_check(iter, 65, 90)
    iter.chr
  elsif code >= 97 && code <= 122
    iter = iterator_check(iter, 97, 122)
    iter.chr
  else
    code.chr
  end
end

cipher = new_string.join("")
puts cipher