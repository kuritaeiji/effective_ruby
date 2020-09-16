class SetMe
  def initialize
    @value = 0
  end

  def value
    @value
  end

  def value= (value)
    @value = value
  end
end

set_me = SetMe.new
puts(set_me.value)
puts(set_me.value = 11)

class Name
  attr_accessor(:first, :last)

  def initialize(first, last)
    self.first = first
    self.last = last
  end

  def full
    "#{first} #{last}"
  end
end

name = Name.new('eiji', 'kurita')
puts(name.full)