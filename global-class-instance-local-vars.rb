require 'pry'

$g1 = 3

### ----------------------------------------- ###

# GLOBAL VARIABLES

def temp1
  $g1 * 5
end

p temp1

### ----------------------------------------- ###

# INSTANCE AND CLASS VARIABLES

class Dog
  @@counter = 0

  def self.counter
    @@counter
  end

  def initialize(name)
    @name = name
    @@counter += 1
  end

  def bark
    "woof, i am #{@name}"
  end
end

d1 = Dog.new('fido')
d2 = Dog.new('sam')
d3 = Dog.new('lassy')

### ----------------------------------------- ###

# binding.pry
