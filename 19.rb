def sum(enum)
  enum.reduce(enum[0]) { |sum, element| sum + element }
end

puts(sum([1, 2, 3, 4, 5]))

def to_hash(array)
  array.reduce({}) { |hash, element| hash.merge(element.to_sym => true) }
end

puts(to_hash(['a', 'b', 'c']))

User = Struct.new(:age, :name)

users = [User.new(11, 'kurita'), User.new(33, 'eiji'), User.new(33, 'aaaa')]

names = users.reduce([]) do |names, user|
  names.push(user.name)  if user.age >= 20
  names
end
print(names)