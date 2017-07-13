require 'pry'

local = 3

### ----------------------------------------- ###

def temp1
  # ERROR - CANNOT ACCESS LOCAL VARIABLE IN METHOD
   # p local
end

temp1

### ----------------------------------------- ###

[1,2,3].each do |x|
  # SUCCESS - CAN ACCESS LOCAL VARIABLE IN BLOCK
  p (x * local)
end

# p x ERROR ACCESSING BLOCK PARAMETER

### ----------------------------------------- ###

prk = proc do |a, b|
  # SUCCESS - CAN ACCESS LOCAL VARIABLE IN PROC
  a + b + local
end

p prk.call(1,2)

# p a ERROR ACCESSING PROC PARAMETER

### ----------------------------------------- ###

lam = lambda do |a|
  # SUCCESS - CAN ACCESS LOCAL VARIABLE IN LAMBDA
  a ** local
end

p lam.call(2)

# p a ERROR ACCESSING LAMBDA PARAMETER

### ----------------------------------------- ###

# PASSING IN A -BLOCK- TO temp2 AND CALLING
# IT WITH YIELD, PASSING IN A PARAMETER, y

def temp2
  z = []
  [2,3,4].each do |y|
    z << (yield y)
  end
  z
end

p temp2 {|x| x ** 2}

### ----------------------------------------- ###

# PASSING A BLOCK, AND CONVERTING TO A PROC
# FIRST AND THEN CALLING IT

def temp3(a, &block)
  block.call(a)
end

p temp3(4) {|x| x / 2.1}

### ----------------------------------------- ###

# PASSING PROC, LAMBDA AND A BLOCK INTO
# METHOD AND CALLING ALL THREE

def temp4(v, p, l, &b)
  b.call(l.call(p.call(v)))
end

p1 = proc {|x| x ** 2}
l1 = lambda {|x| x ** 3}
p temp4(5, p1, l1) {|x| x ** 4}

### ----------------------------------------- ###

# binding.pry
