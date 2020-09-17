require('logger')

class AuditDecorator
  def initialize(object)
    @object = object
    @logger = Logger.new(STDOUT)
  end

  private
    def method_missing(name, *args, &block)
      @logger.info("calling '#{name}' on #{@object.inspect}")
      @object.send(name, *args, &block)
    end
end

class AuditDecorator2
  def initialize(object)
    @object = object
    @logger = Logger.new(STDOUT)

    mod = Module.new do
      object.public_methods.each do |name|
        define_method(name) do |*args, &block|
          @logger.info("calling '#{name}' on #{@object.inspect}")
          @object.send(name, *args, &block)
        end
      end
    end

    extend(mod)
  end
end

class AuditDecorator3
  def initialize(object)
    @object = object
    @logger = Logger.new(STDOUT)

    @object.public_methods.each do |name|
      define_singleton_method(name) do |*args, &block|
        @logger.info("calling '#{name}' on #{@object.inspect}")
        @object.send(name, *args, &block)
      end
    end
  end
end