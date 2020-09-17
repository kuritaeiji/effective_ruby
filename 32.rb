module OnlySpace
  def self.only_space?(string)
    /\A[[:space:]*]\Z/ === string
  end
end

require('forwardable')

class StringExtra
  extend(Forwardable)

  def initialize(string = '')
    @string = string
  end

  def_delegators(:@string, *String.public_instance_methods(false))

  def only_space?
    /\A[[:space]*]\Z/ === @string
  end
end