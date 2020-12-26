numbers = gets.chomp.split('')

if numbers.size == 1
  if numbers[0] == '8'
    puts 'Yes'
    exit
  else
    puts 'No'
    exit
  end
end

if numbers.size == 2

  if numbers.join.to_i % 8 == 0 ||  numbers.reverse.join.to_i % 8 == 0
    puts 'Yes'
    exit
  else
    puts 'No'
    exit
  end
end

if numbers.size >= 3
  eight_times_nums = 112.step(999,8).map { |n| n.to_s.split('').tally}
  input_numbers_distrubution = numbers.tally
  ans = eight_times_nums.any? do |num|
    num.all? { |k, v| input_numbers_distrubution[k] && input_numbers_distrubution[k] >= v }
  end

  puts ans ? 'Yes' : 'No'
end
