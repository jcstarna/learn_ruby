def add par1, par2
  par1 + par2
end

def subtract par1, par2
  par1 - par2
end

def sum array
  array.reduce(0){ |sum, num| sum + num }
end

def multiply a,b
  a*b
end

def power a,b
  a**b
end

def factorial fact
  (fact.downto 1).reduce(1) { |fact,num| fact*num}
end
