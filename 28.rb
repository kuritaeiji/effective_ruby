module SuperForwardable
  def extended(klass)
    require('forwardable')
    klass.extend(Forwardable)
  end

  def def_delegators_with_super(target, *methods)
    methods.each do |method|
      target_method = "#{method}_without_super".to_sym
      del_delegator(target, method, target_method)

      define_method(method) do |*args, &block|
        send(target_method, *args, &block)
        super(*args, &block)
      end
    end
  end
end

class RaisingHash
  extend(SuperForwardable)

  def_delegators(:@hash, :[], :[]=)
  def_delegators_with_super(:@hash, :freeze, :taint, :untaint)

  def initialize(hash)
    @hash = hash
  end
end