module LogMethod
  def log_method(method)
    orig = "#{method}_without_logging".to_sym

    if instance_methods.include?(orig)
      raise(NameError.new("#{orig} isn't a unique name"))
    end

    alias_method(orig, method)

    define_method(method) do |*args, &block|
      $stdout.puts("calling method #{method}")
      result = send(orig, *args, &block)
      $stdout.puts("#{method} returned #{result.inspect}")
      result
    end
  end

  def unlog_method(method)
    orig = "#{method}_without_logging"

    unless instance_methods.include?(orig)
      raise(NameError.new("was #{orig} already removed?"))
    end

    remove_method(method)

    alias_method(method, orig)

    remove_method(orig)
  end
end