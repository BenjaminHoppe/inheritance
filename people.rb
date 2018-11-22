class Person

  def initialize(name)
    @name = name
  end

  def greet
    puts "Hi, my name is #{@name}"
  end

end

# ------------------------------------

class Student < Person

  def initialize(name)
    super(name)
  end

  # Instance Method
  def learn
    return "I get it!"
  end

end

# ------------------------------------

class Instructor < Person

  def initialize(name)
    super(name)
  end

  # Instance Method

  def teach
    return "Everything in ruby is an object"
  end

end

# ------------------------------------

nadia = Instructor.new("Nadia")
puts nadia.greet
chris = Student.new("Chris")
puts chris.greet

puts nadia.teach
puts chris.learn
puts chris.teach
# Does not work because Chris is a student and is not associated with that class
