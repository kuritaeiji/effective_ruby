require('forwardable')

class RaisingHash
  extend(Forwardable)
  def_delegators(:@hash, :[], :[]=)

  def initialize
    @hash = Hash.new { |hash, key| raise(KeyError.new("invalid key '#{key}'"))}
  end

  def invert
    other = self.class.new
    
  end
end

hash = Hash.new { |h, key| raise(KeyError.new("invalid key '#{key}'"))}
raising_hash = RaisingHash.new(hash)

raising_hash[:ffff]