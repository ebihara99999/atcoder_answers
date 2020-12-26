follower, followee = gets.to_s.split.map{ |e| e.to_i }
puts (2 * follower + 100) - followee
