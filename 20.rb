def frequency(array)
  array.reduce({}) do |hash, element|
    hash[element] ||= 0
    hash[element] += 1 if hash[element]
    hash
  end
end

print(frequency(['1', '1', '2', '3', '3']))