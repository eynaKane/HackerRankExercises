# https://www.hackerrank.com/challenges/30-scope/problem
class Difference:
  def __init__(self, a):
    self.__elements = a

  def computeDifference(self):
    d._Difference__elements.sort()
    sorted_elements = d._Difference__elements
    self.maximumDifference = sorted_elements[-1] - sorted_elements[0]

_ = raw_input()

a = [int(e) for e in raw_input().split(' ')]

d = Difference(a)

d.computeDifference()

print d.maximumDifference

# python 30DaysOfCode/day_14_difference.py
# 3
# 1 2 5

# 4

# python 30DaysOfCode/day_14_difference.py
# 5 
# 8 19 3 2 7

# 17
