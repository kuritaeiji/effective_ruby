module PreventInheritence
  class InheritanceError < StandardError
  end

  def inherited(sub_class)
    raise(InheritanceError.new("#{sub_class} can not inherit from #{self}"))
  end
end

class AAA
  extend(PreventInheritence)
end

class BBB < AAA
end







class Parent
  def self.inherited(sub_class)
  end
end