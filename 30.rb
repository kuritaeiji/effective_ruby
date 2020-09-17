class HashProxy
  def initialize(hash = {})
    @hash = hash
  end

  private
    def method_missing(method, *args, &block)
      if @hash.respond_to?(method)
        @hash.send(method, *args, &block)
      else
        super(method, *args, &block)
      end
    end
end

class HashProxy2
  def initialize(hash = {})
    @hash = hash
  end

  Hash.public_instance_methods(false).each do |name|
    define_method(name) do |*args, &block|
      @hash.send(name, *args, &block)
    end
  end
end