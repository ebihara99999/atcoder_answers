n = gets.chomp

if (n.to_i % 3).zero?
  puts 0
  exit
end

n_arr = n.split('').map { |i| i.to_i % 3 }

sum = n_arr.sum
remainder = sum % 3

if remainder.zero?
  puts 0
  exit
end

if n_arr.size <= 2
  if n_arr.count(0).zero?
    puts -1
  else
    puts 1
  end
  exit
end

if remainder == 2
  unless n_arr.count(2).zero?
    puts 1
    exit
  end

  if n_arr.count(1) >= 2
    puts 2
    exit
  end
  puts -1
elsif remainder == 1
  if n_arr.count(2) >= 2
    # like [2, 2, 0]
    puts 2
    exit
  elsif !n_arr.count(1).zero?
    puts 1
    exit
  end
  puts -1
end
