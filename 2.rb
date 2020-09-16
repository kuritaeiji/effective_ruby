def fix_title(title)
  title.to_s.capitalize
end

puts(fix_title(nil))

puts(nil.to_i)
puts(nil.to_a)

puts(['a', 'b', nil, 'c', nil, 'd'].compact)