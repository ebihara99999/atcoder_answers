gets.to_i
inputs = gets.split.map(&:to_i)

ans = (2..1000).max_by { |i| inputs.count { |a| a % i == 0 } }

puts ans
