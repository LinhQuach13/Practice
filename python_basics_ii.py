# Python Basic II Exercises from W3resource

# 1. Write a Python function that takes a sequence of numbers and determines whether all the numbers are different from each other.

def distinct_num(i):
  if len(i) == len(set(i)):
    return True
  else:
    return False;
# Note: set() method is used to convert any of the iterable to sequence of iterable elements with distinct elements, commonly called Set. 