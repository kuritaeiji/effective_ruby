class Base
  def m1(x, y)
    x + y
  end
end

class Derived < Base
  def m1(x, y)
    super(x, y)
  end
end

module CoolFeatures
  def feature_cool
    'featurea cool'
  end
end

class Vanilla
  include(CoolFeatures)

  def feature_cool
    super()
  end
end

vanilla = Vanilla.new
puts(vanilla.feature_cool)