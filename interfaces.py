# https://www.hackerrank.com/challenges/30-interfaces/problem
# import code
# code.interact(local=locals())

class AdvancedArithmetic(object):
  def divisorSum(n):
    raise NotImplementedError

class Calculator(AdvancedArithmetic):
  def divisorSum(self, n):
    divs = [n]
    divisor = n / 2

    while divisor > 0:
      if (n % divisor) == 0:
        divs.append(divisor)
      divisor = divisor - 1  

    return sum(divs)

n = int(raw_input())

my_calculator = Calculator()

s = my_calculator.divisorSum(n)

print("I implemented: " + type(my_calculator).__bases__[0].__name__)

print(s)

# python interfaces.py
# 20
# I implemented: AdvancedArithmetic

# 42

# python interfaces.py
# 6
# I implemented: AdvancedArithmetic

# 12

# python interfaces.py
# 1
# I implemented: AdvancedArithmetic

# 1
