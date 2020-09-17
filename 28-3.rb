class InstanceMethodWatcher
  def self.method_added(method)
    print(method.class)
  end

  def self.method_removed(method)
    print(method)
  end

  def self.method_undefined(method)
    print(method)
  end

  def hello
  end

  remove_method(:hello)

  def hello
  end

  undef_method(:hello)
end

class SingletonMethodWatcher
  def self.singleton_method_added(method)
    puts(method)
  end

  def self.singleton_method_removed(method)
    puts(method)
  end

  def self.goodbye
  end

  class << self
    remove_method(:goodbye)
  end
end