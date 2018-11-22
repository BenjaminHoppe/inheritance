class SolarSystem


  def initialize
    @bodies = []
  end

  # Instance Method

  def add(item)
    @@bodies << item
  end

  def total_mass
    output = 0
    @bodies.each do | body |
      output += item[:mass]
    end
    return output
  end
end

# ------------------------------------

class Body

  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

# ------------------------------------

class Planet < Body

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end
end

# ------------------------------------

class Star < Body

  def initialize(name, mass)
    super(name, mass)
    @type = "G-type"
  end
end

# ------------------------------------

class Moon < Body

  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end
end

# ------------------------------------

sun = Star.new("Sun", 100)
earth = Planet.new("Earth", 10, 365, 30)
luna = Moon.new("Moon", 5, 29, earth)

puts sun
puts earth
puts luna
