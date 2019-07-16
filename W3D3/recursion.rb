def sum_to(n)
  return nil if n < 0
  return n if n == 1 || n == 0
  n + sum_to(n-1)
end

def add_numbers(nums_array)
  return nil if nums_array.empty?
  return nums_array[0] if nums_array.length == 1
  x = nums_array[0]
  nums_array.shift
  x + add_numbers(nums_array)
end

def gamma_fnc(n)
  return nil if n == 0
  return 1 if n == 1
  (n - 1) * gamma_fnc(n - 1)
end

def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  return true if flavors[0] == favorite
  flavors.shift
  ice_cream_shop(flavors, favorite)
end

def reverse(string)
  return nil if string.length == 0
  return string[0] if string.length == 1
  temp = string[-1]
  # arr = string.split("")
  # arr.pop
  # arr.join("")
  temp + reverse(string[0...-1])
end