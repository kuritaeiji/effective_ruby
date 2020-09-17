class Widget
  def initialize(name)
    @name = name
  end
end

class Widget2
  attr_accessor(:name, :quantity)

  def initialize(&block)
    instance_eval(&block) if block
  end
end

class Counter
  DEFAULT = 0
  attr_accessor(:counter)

  def initialize(start = DEFAULT)
    @counter = start
  end

  def increment
    self.counter = counter + 1
  end
end

module Reset
  def self.reset_var(object, name)
    object.instance_eval("@#{name} = DEFAULT")
  end
end