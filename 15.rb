class Singleton
  private_class_method(:new, :dup, :clone)

  def self.instance
    @instance ||= new
  end
end

class Configuration < Singleton
end

class Database < Singleton
end