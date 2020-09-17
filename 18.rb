require('set')

class Roll
  def initialize(name, permissions)
    @name = name
    @permissions = Set.new(permissions)
  end

  def can?(permission)
    @permissions.include?(permission)
  end
end

root_roll = Roll.new('root', ['ec2', 'vpc'])
puts(root_roll.can?('ec2'))