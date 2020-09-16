class Color
  attr_reader(:name)

  def initialize(name)
    @name = name
  end

  def hash
    name.hash
  end

  def eql?(other)
    name.eql?(other.name)
  end
end

a = Color.new('pink')
b = Color.new('pink')

hash = {a: 'like', b: 'love'}

command = ''
class InvalidCommandError < StandardError
end

case command
when 'start' then puts('start')
when 'stop' then puts('stop')
else raise(InvalidCommandError.new("#{command}"))
end