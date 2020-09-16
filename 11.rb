module NoteBooks
  class Bindings
    def initialize(style, options = [])
      @style = style
      @options = options
    end
  end
end

loap = NoteBooks::Bindings.new(:loap)

module SuperDumbCrypto
  KEY = 'password'
end

class SuperDumbCrypto::Encrypt
  def initialize(key = SuperDumbCrypto::KEY)
  end
end

module Cluster
  class Array
    def initialize(n)
      @disks = ::Array.new(n) { |i| "disk#{i}" }
    end
  end
end