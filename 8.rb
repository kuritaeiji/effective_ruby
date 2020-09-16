class Person
  attr_accessor(:name)

  def initialize(name, age_something)
    @name = name
    child_initialize(age_something)
  end

  def child_initialize(age_something)
  end
end

class Child < Person
  attr_accessor(:grade)

  def child_initialize(grade)
    @grade = grade
  end
end

class Adult < Person
  attr_accessor(:age)

  def child_initialize(age)
    @age = age
  end
end