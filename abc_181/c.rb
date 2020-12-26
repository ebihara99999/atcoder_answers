n = gets.chomp.to_i

xy = n.times.map { gets.split.map(&:to_i) }

xy.combination(3) do |xy1, xy2, xy3|
  x2 = xy2[0] - xy1[0]
  y2 = xy2[1] - xy1[1]
  x3 = xy3[0] - xy1[0]
  y3 = xy3[1] - xy1[1]

  if y2 * x3 == y3 * x2
    puts 'Yes'
    exit
  end
end

puts 'No'
