n = gets.to_i

sum = 0

n.times do
  from, to = gets.chomp.split.map(&:to_i)
  sum += (from + to)*(to - from + 1) / 2
end

puts sum
