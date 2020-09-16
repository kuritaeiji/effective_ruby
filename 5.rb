puts('808'.split(/0/))

dirs = ['usr', 'local', 'bin']

puts(File.join(*dirs))

puts(dirs.map(&:length))

def repeat (n, &block)
  n.times { |number| block.call(number) }
end

repeat(10) do |number|
  puts(number)
end